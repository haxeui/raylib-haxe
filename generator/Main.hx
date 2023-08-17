package;

import haxe.Http;
import sys.io.File;

using StringTools;

class Main {
    static var failFast = false;
    
    static var structsBuilt:Map<String, Dynamic> = new Map<String, Dynamic>();
    static var structsEmpty:Map<String, String> = [
        "Quaternion" => "Quaternion",
        "rAudioBuffer" => "RAudioBuffer",
        "rAudioProcessor" => "RAudioProcessor",
        "AudioCallback" => "AudioCallback",
    ];
    
    static var structsCallbacks:Map<String, String> = [
        "TraceLogCallback" => "TraceLogCallback",
        "LoadFileDataCallback" => "LoadFileDataCallback",
        "SaveFileDataCallback" => "SaveFileDataCallback",
        "LoadFileTextCallback" => "LoadFileTextCallback",
        "SaveFileTextCallback" => "SaveFileTextCallback"
    ];

    static var structsAliased:Map<String, String> = [
        "Texture2D" => "Texture",
        "TextureCubemap" => "Texture",
        "RenderTexture2D" => "RenderTexture",
        "Camera" => "Camera3D",
    ];
    
    static var typeMap:Map<String, String> = [];
    
    static var useRefExceptions:Map<String, Array<String>> = [
        "Model" => ["materials", "meshes", "bones"],
        "Material" => ["maps"],
        "Font" => ["glyphs", "recs"],
        "GenImageFontAtlas" => ["chars"],
    ];
    
    static function main() {
        var source = "https://raw.githubusercontent.com/raysan5/raylib/4.5.0/src/parser/output/raylib_api.xml"; // must use xml version so function params are ordered
        var output = "RayLib.hx";
        
        log('building externs from "${source}"');
        var data = Http.requestUrl(source);
        var xml:Xml = Xml.parse(data).firstElement();
        
        var sb = new StringBuf();
        buildHeader(sb);
        buildStructs(xml.elementsNamed("Structs").next(), sb);
        buildFunctions(xml.elementsNamed("Functions").next(), sb);
        buildEnums(xml.elementsNamed("Enums").next(), sb);
        buildFooter(sb);
        
        log('writing externs to "${output}"');
        File.saveContent(output, sb.toString());
    }
    
    static function buildHeader(sb:StringBuf) {
        sb.add('package;\n\n');
    }
    
    static function buildFooter(sb:StringBuf) {
        // these come from #defines, so arent in the api, lets whack them in too
        sb.add('
@:include("raylib.h")
extern class Colors {
    public static var LIGHTGRAY(get, null):Color;   private inline static function get_LIGHTGRAY():Color { return cast untyped __cpp__("LIGHTGRAY"); }
    public static var GRAY(get, null):Color;        private inline static function get_GRAY():Color { return cast untyped __cpp__("GRAY"); }
    public static var DARKGRAY(get, null):Color;    private inline static function get_DARKGRAY():Color { return cast untyped __cpp__("DARKGRAY"); }
    public static var YELLOW(get, null):Color;      private inline static function get_YELLOW():Color { return cast untyped __cpp__("YELLOW"); }
    public static var GOLD(get, null):Color;        private inline static function get_GOLD():Color { return cast untyped __cpp__("GOLD"); }
    public static var ORANGE(get, null):Color;      private inline static function get_ORANGE():Color { return cast untyped __cpp__("ORANGE"); }
    public static var PINK(get, null):Color;        private inline static function get_PINK():Color { return cast untyped __cpp__("PINK"); }
    public static var RED(get, null):Color;         private inline static function get_RED():Color { return cast untyped __cpp__("RED"); }
    public static var MAROON(get, null):Color;      private inline static function get_MAROON():Color { return cast untyped __cpp__("MAROON"); }
    public static var GREEN(get, null):Color;       private inline static function get_GREEN():Color { return cast untyped __cpp__("GREEN"); }
    public static var LIME(get, null):Color;        private inline static function get_LIME():Color { return cast untyped __cpp__("LIME"); }
    public static var DARKGREEN(get, null):Color;   private inline static function get_DARKGREEN():Color { return cast untyped __cpp__("DARKGREEN"); }
    public static var SKYBLUE(get, null):Color;     private inline static function get_SKYBLUE():Color { return cast untyped __cpp__("SKYBLUE"); }
    public static var BLUE(get, null):Color;        private inline static function get_BLUE():Color { return cast untyped __cpp__("BLUE"); }
    public static var DARKBLUE(get, null):Color;    private inline static function get_DARKBLUE():Color { return cast untyped __cpp__("DARKBLUE"); }
    public static var PURPLE(get, null):Color;      private inline static function get_PURPLE():Color { return cast untyped __cpp__("PURPLE"); }
    public static var DARKPURPLE(get, null):Color;  private inline static function get_DARKPURPLE():Color { return cast untyped __cpp__("DARKPURPLE"); }
    public static var BEIGE(get, null):Color;       private inline static function get_BEIGE():Color { return cast untyped __cpp__("BEIGE"); }
    public static var BROWN(get, null):Color;       private inline static function get_BROWN():Color { return cast untyped __cpp__("BROWN"); }
    public static var DARKBROWN(get, null):Color;   private inline static function get_DARKBROWN():Color { return cast untyped __cpp__("DARKBROWN"); }
    
    public static var WHITE(get, null):Color;       private inline static function get_WHITE():Color { return cast untyped __cpp__("WHITE"); }
    public static var BLACK(get, null):Color;       private inline static function get_BLACK():Color { return cast untyped __cpp__("BLACK"); }
    public static var BLANK(get, null):Color;       private inline static function get_BLANK():Color { return cast untyped __cpp__("BLANK"); }
    public static var MAGENTA(get, null):Color;     private inline static function get_MAGENTA():Color { return cast untyped __cpp__("MAGENTA"); }
    public static var RAYWHITE(get, null):Color;    private inline static function get_RAYWHITE():Color { return cast untyped __cpp__("RAYWHITE"); }

}
        ');
        
        sb.add('
@:native("va_list")
extern class VaList {
    public static inline function int(args:VaList):Int {
        return untyped __cpp__("va_arg(args, int)");
    }

    public static inline function string(args:VaList):String {
        return untyped __cpp__("va_arg(args, const char *)");
    }

    public static inline function float(args:VaList):Float {
        return untyped __cpp__("va_arg(args, double)");
    }
}
        ');
    }
    
    static function buildStructs(structsEl:Xml, sb:StringBuf) {
        log('  generating structs', false);
        var n = 0;
        for (structEl in structsEl.elementsNamed("Struct")) {
            buildStruct(structEl, sb);
            n++;
        }
        log('......${n}');
        
        for (callbackStruct in structsCallbacks.keys()) {
            var value = structsCallbacks.get(callbackStruct);
            sb.add('@:include("raylib.h")\n');
            sb.add('@:native("${callbackStruct}")\n');
            sb.add('extern class ${value} {\n');
            sb.add('    public static inline function fromStatic<T>(inStaticFunction:T):${callbackStruct} {\n');
            sb.add('        return untyped __cpp__("(${callbackStruct}) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));\n');
            sb.add('    }\n');
            sb.add('}\n');
            sb.add('\n');
        }
        
        sb.add('// TODO: empty structs - not sure where they come from in the api - but they need to be defined\n');
        for (emptyStruct in structsEmpty.keys()) {
            var value = structsEmpty.get(emptyStruct);
            sb.add('@:include("raylib.h")\n');
            sb.add('@:native("${emptyStruct}")\n');
            sb.add('extern class ${value} {\n');
            sb.add('}\n');
            sb.add('\n');
        }
    }
    
    static function buildStructAliases(name:String, sb:StringBuf) {
        for (alias in structsAliased.keys()) {
            var to = structsAliased.get(alias);
            if (to == name) {
                sb.add('// ${name} alias\n');
                sb.add('typedef ${alias} = ${name};\n');
                sb.add('typedef ${alias}Ref = ${name}Ref;\n');
                sb.add('typedef Ray${alias} = Ray${name};\n');
                sb.add('\n');
                structsBuilt.set(alias, {
                    name: alias
                });
                typeMap.set(alias, 'Ray${name}');
            }
        }
        
    }
    
    static function buildStruct(structEl:Xml, sb:StringBuf) {
        var name:String = structEl.get("name");
        var orginalName = name;
        var description:String = structEl.get("desc");
        if (description == null || description.trim() == "") {
            description = name;
        }
        
        //log('    generating "${name}" (${structEl.get("fieldCount")} fields)');

        buildStructAliases(name, sb);
        name = "Ray" + name;
        
        sb.add('// ${description}\n');
        sb.add('@:include("raylib.h")\n');
        sb.add('@:native("${orginalName}")\n');
        sb.add('@:structAccess\n');
        sb.add('extern private class ${name} {\n');
        
        var createParamsList = [];
        var createParamsUntypedList = [];
        var createParamsUntypedParamsList = [];
        var fieldIndex = 0;
        for (f in structEl.elementsNamed("Field")) {
            var names:Array<String> = f.get("name").split(",");
            var fieldDescription = f.get("desc");
            for (name in names) {
                name = name.trim();
                var cppType = f.get("type");
                var isNativeArray = false;
                if (name.contains("[")) {
                    var orgName = name;
                    name = name.substr(0, name.indexOf("[")).trim();
                    fieldDescription += ' - TODO: cpp native array (original: "${cppType} ${orgName}")';
                    isNativeArray = true;
                }
                var haxeType = convertType(cppType);
                sb.add('    @:native("${name}") @:dox(hide) @:noCompletion private var _${name}:${haxeType};');
                if (fieldDescription != null && fieldDescription != "") {
                    sb.add(' // ${fieldDescription}');
                }
                sb.add('\n');
                
                createParamsList.push('${name}:${haxeType}');
                createParamsUntypedList.push('(${cppType}){${fieldIndex}}');
                createParamsUntypedParamsList.push('${name}');
                
                fieldIndex++;
            }
        }
        
        sb.add('}\n');
        sb.add('\n');
        
        /*
        sb.add('typedef ${orginalName} = cpp.Struct<${name}>;\n');
        sb.add('\n');
        */
        
        sb.add('@:include("raylib.h")\n');
        sb.add('@:native("cpp.Reference<${orginalName}>")\n');
        sb.add('extern class ${orginalName}Ref extends ${name} {\n');
        
        // build getters
        var fieldIndex = 0;
        for (f in structEl.elementsNamed("Field")) {
            var names:Array<String> = f.get("name").split(",");
            var fieldDescription = f.get("desc");
            for (name in names) {
                name = name.trim();
                var cppType = f.get("type");
                var isNativeArray = false;
                if (name.contains("[")) {
                    var orgName = name;
                    name = name.substr(0, name.indexOf("[")).trim();
                    fieldDescription += ' - TODO: cpp native array (original: "${cppType} ${orgName}")';
                    isNativeArray = true;
                }
                var haxeType = convertType(cppType, false);
                var useRef = false;
                var temp = cppType.replace("const ", "");
                temp = temp.split(" ").shift();
                if (cppType.contains("**") == false && typeMap.exists(temp)) {
                    if (useRefExceptions.exists(orginalName) && useRefExceptions.get(orginalName).indexOf(name) != -1) {
                        useRef = false;
                    } else {
                        useRef = true;
                        haxeType = haxeType.replace("cpp.RawConstPointer<", "");
                        haxeType = haxeType.replace("cpp.RawPointer<", "");
                        haxeType = haxeType.replace(">", "");
                    }
                }
                if (useRef == true) {
                    haxeType = haxeType + "Ref";
                }
                var prefix = "";
                if (haxeType != "Int" && haxeType != "Bool" && haxeType != "Float" && haxeType != "String") {
                    prefix = "cast";
                }
                sb.add('    public var ${name}(get, set):${haxeType};\n');
                sb.add('    private inline function get_${name}():${haxeType} { return ${prefix} _${name}; }\n');
                sb.add('    private inline function set_${name}(value:${haxeType}):${haxeType} { _${name} = ${prefix} value; return value; }\n');
                sb.add('\n');
                
                fieldIndex++;
            }
        }
        
        sb.add('}\n');
        sb.add('\n');
        
        sb.add('@:include("raylib.h")\n');
        sb.add('@:native("cpp.Struct<${orginalName}>")\n');
        sb.add('extern class ${orginalName} extends ${orginalName}Ref {\n');

        var useRef = true;
        var returnValueName = orginalName;
        if (useRef == true) {
            returnValueName = orginalName + "Ref";
        }
        
        // build create function
        sb.add('    public static inline function create(');
        sb.add(createParamsList.join(', '));
        sb.add('):${returnValueName} {\n');
        sb.add('        var t:${name} = untyped __cpp__("{ ');
        sb.add(createParamsUntypedList.join(', '));
        sb.add(' }", ');
        sb.add(createParamsUntypedParamsList.join(', '));
        sb.add(');\n');
        sb.add('        return cast t;\n');
        sb.add('    }');
        sb.add('\n');
        
        // build createEmpty function
        sb.add('\n');
        sb.add('    public static inline function createEmpty():${returnValueName} {\n');
        sb.add('        var t:${name} = untyped __cpp__("{ 0 }");\n');
        sb.add('        return cast t;\n');
        sb.add('    }\n');
        
        sb.add('}\n');
        sb.add('\n');
        
        typeMap.set(orginalName, name);
        structsBuilt.set(name, structEl);
    }
    
    static function buildEnums(enumsEl:Xml, sb:StringBuf) {
        log('  generating enums', false);
        var n = 0;
        for (enumEl in enumsEl.elementsNamed("Enum")) {
            buildEnum(enumEl, sb);
            n++;
        }
        log('........${n}');
    }
    
    static var customEnumPrefix:Map<String, String> = [ // just make things neater / consistent
        "ConfigFlags" => "FLAG",
        "TraceLogLevel" => "LOG",
        "KeyboardKey" => "KEY",
        "MaterialMapIndex" => "MATERIAL_MAP",
        "ShaderLocationIndex" => "SHADER_LOC",
        "ShaderUniformDataType" => "SHADER_UNIFORM",
        "ShaderAttributeDataType" => "SHADER_ATTRIB",
        "PixelFormat" => "PIXELFORMAT",
        "FontType" => "FONT",
        "BlendMode" => "BLEND",
        "CameraMode" => "CAMERA",
        "CameraProjection" => "CAMERA",
        "NPatchLayout" => "NPATCH"
    ];

    static function buildEnum(enumEl:Xml, sb:StringBuf) {
        var name:String = enumEl.get("name");
        var description:String = enumEl.get("desc");
        if (description == null || description.trim() == "") {
            description = name;
        }
        
        sb.add('@:include("raylib.h")\n');
        sb.add('extern enum abstract ${name}(Int) from Int to Int {\n');
        for (valueEl in enumEl.elementsNamed("Value")) {
            var nativeName = valueEl.get("name");
            var prefix = getEnumPrefix(name);
            if (customEnumPrefix.exists(name)) {
                prefix = customEnumPrefix.get(name);
            }
            var haxeName = nativeName.replace(prefix + "_", "");
            
            sb.add('    @:native("${nativeName}") ');
            pad(40 - nativeName.length, sb);
            sb.add('public static var ${haxeName}:Int;\n');
            
        }
        sb.add('}\n');
        sb.add('\n');
    }
    
    static function getEnumPrefix(s:String) { // "MouseButton" => "MOUSE_BUTTON" - ugly, but who cares
        var r = "";
        var start = false;
        for (i in 0...s.length) {
            var c = s.charAt(i);
            if (!isCapital(c)) {
                start = true;
            } else if (start == true) {
                if (isCapital(c)) {
                    r += "_";
                }
            }
            
            r += c;
        }
        return r.toUpperCase();
    }
    
    static inline function isCapital(s:String) {
        return s.charCodeAt(0) >= "A".charCodeAt(0) && s.charCodeAt(0) <= "Z".charCodeAt(0);
    }
    
    static function buildFunctions(functionsEl:Xml, sb:StringBuf) {
        log('  generating functions', false);
        
        sb.add("@:buildXml(\"<include name='${haxelib:raylib-haxe}/Build.xml'/>\")\n");
        sb.add('@:include("raylib.h")\n');
        sb.add('extern class RayLib {\n');
        
        var n = 0;
        for (functionEl in functionsEl.elementsNamed("Function")) {
            buildFunction(functionEl, sb);
            n++;
        }
        log('....${n}');
        
        sb.add('}\n');
        sb.add('\n');
    }
    
    static function buildFunction(functionEl:Xml, sb:StringBuf) {
        var name:String = functionEl.get("name");
        var description:String = functionEl.get("desc");
        if (description == null || description.trim() == "") {
            description = name;
        }
        //log('    generating "${name}"');
        
        var cppRetType = functionEl.get("retType");
        var haxeRetType = convertType(cppRetType);
        if (haxeRetType == "cpp.Void") {
            haxeRetType = "Void";
        }
        
        sb.add('    @:native("${name}") ');
        pad(40 - name.length, sb);
        sb.add('private static function _${name}');
        sb.add('(');
        var paramList:Array<String> = [];
        for (paramEl in functionEl.elementsNamed("Param")) {
            var paramName = paramEl.get("name");
            if (paramName == "dynamic"){
                paramName = "dyn";
            }
            var paramType = paramEl.get("type");
            if (paramType.trim().length == 0) {
                continue;
            }
            var paramTypeHaxe = convertType(paramType);
            var paramDesc = paramEl.get("desc");
            
            if (paramDesc != null && paramDesc.trim().length != 0) {
                paramList.push('/* ${paramDesc} */ ${paramName}:${paramTypeHaxe}');
            } else {
                paramList.push('${paramName}:${paramTypeHaxe}');
            }
        }
        sb.add(paramList.join(", "));
        sb.add(')');
        sb.add(':${haxeRetType};');
        if (description != null && description.trim().length != 0) {
            pad(5, sb);
            sb.add(' // ${description}');
        }
        sb.add('\n');
        
        // inline function
        haxeRetType = convertType(cppRetType, false);
        var prefix = 'return';
        if (haxeRetType == "cpp.Void") {
            haxeRetType = "Void";
        }
        if (haxeRetType == "Void") {
            prefix = '';
        } else if (haxeRetType != "Int" && haxeRetType != "Bool" && haxeRetType != "Float" && haxeRetType != "String") {
            prefix = 'return cast';
        }
        pad(40 + '    @:native("${name}") '.length - name.length, sb);
        sb.add('public static inline function ${name}');
        sb.add('(');
        var paramList:Array<String> = [];
        var paramNames:Array<String> = [];
        for (paramEl in functionEl.elementsNamed("Param")) {
            var paramName = paramEl.get("name");
            if (paramName == "dynamic"){
                paramName = "dyn";
            }
            var paramType = paramEl.get("type");
            if (paramType.trim().length == 0) {
                continue;
            }
            var paramTypeHaxe = convertType(paramType, false);
            var useRef = false;
            var temp = paramType.replace("const ", "");
            temp = temp.split(" ").shift();
            if (paramType.contains("**") == false && typeMap.exists(temp)) {
                if (useRefExceptions.exists(name) && useRefExceptions.get(name).indexOf(paramName) != -1) {
                    useRef = false;
                } else {
                    useRef = true;
                    paramTypeHaxe = paramTypeHaxe.replace("cpp.RawConstPointer<", "");
                    paramTypeHaxe = paramTypeHaxe.replace("cpp.RawPointer<", "");
                    paramTypeHaxe = paramTypeHaxe.replace(">", "");
                }
            }
            if (useRef == true) {
                paramTypeHaxe += "Ref";
            }
            var paramDesc = paramEl.get("desc");
            
            if (paramDesc != null && paramDesc.trim().length != 0) {
                paramList.push('/* ${paramDesc} */ ${paramName}:${paramTypeHaxe}');
            } else {
                paramList.push('${paramName}:${paramTypeHaxe}');
            }
            if (paramTypeHaxe != "Int" && paramTypeHaxe != "Bool" && paramTypeHaxe != "Float" && paramTypeHaxe != "String") {
                paramNames.push("cast " + paramName);
            } else {
                paramNames.push(paramName);
            }
        }
        sb.add(paramList.join(", "));
        sb.add(')');
        sb.add(':${haxeRetType}');
        sb.add(' { ${prefix} _$name(');
        sb.add(paramNames.join(', '));
        sb.add('); }');
        if (description != null && description.trim().length != 0) {
            pad(5, sb);
            sb.add(' // ${description}');
        }
        sb.add('\n');
    }
    
    static function convertType(cppType:String, useTypeMap:Bool = true):String {
        if (cppType == "...") {
            return "haxe.extern.Rest<Any>";
        }
        if (typeMap.exists(cppType) && useTypeMap == true) {
            return typeMap.get(cppType);
        }
        if (structsBuilt.exists(cppType)) {
            return cppType;
        }

        if (cppType.contains("**")) { // pointer
            var type = cppType.substr(0, cppType.indexOf("*")).trim();
            return 'cpp.RawPointer<cpp.RawPointer<${convertType(type, useTypeMap)}>>';
        }
        
        if (cppType.contains("*")) { // pointer
            if (cppType == "const char *") {
                return "cpp.ConstCharStar";
            }
            var type = cppType.substr(0, cppType.indexOf("*")).trim();
            if (type.contains("const")) {
                type = type.replace("const", "").trim();
                return 'cpp.RawConstPointer<${convertType(type, useTypeMap)}>';
            }
            if (type == "unsigned int") {
                return 'cpp.RawPointer<cpp.UInt32>';
            }
            return 'cpp.RawPointer<${convertType(type, useTypeMap)}>';
        }
        
        if (structsEmpty.exists(cppType)) {
            return structsEmpty.get(cppType);
        }
        if (structsCallbacks.exists(cppType)) {
            return structsCallbacks.get(cppType);
        }
        
        var haxeType = switch (cppType.trim()) {
            case "unsigned char": "cpp.UInt8";
            case "const unsigned char": "cpp.UInt8";
            case "const char": "Int";
            case "unsigned int": "Int";
            case "unsigned short": "Int";
            case "float": "Float";
            case "double": "Float";
            case "int": "Int";
            case "long": "Int";
            case "bool": "Bool";
            case "char": "Int";
            case "void": "cpp.Void";
            case "const void": "cpp.Void";
            case _: null;
        }
        
        if (haxeType == null) {
            //log('\nWARNING: could not find haxe equivelent for cpp type "${cppType}"');
            if (failFast == true) {
                throw('WARNING: could not find haxe equivelent for cpp type "${cppType}"');
            }
            
            haxeType = cppType; // lets just set it to the cpp, so we can see what it was supposed to be
        }
        
        return haxeType;
    }
    
    static function log(s:String, newLine:Bool = true) {
        if (newLine == true) {
            Sys.println(s);
        } else {
            Sys.print(s);
        }

    }
    
    static function pad(n:Int, sb:StringBuf) {
        for (_ in 0...n) {
            sb.add(' ');
        }
    }
}