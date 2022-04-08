package;

// Vector2, 2 components
@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern private class RayVector2 {
    @:native("x") @:dox(hide) @:noCompletion private var _x:Float; // Vector x component
    @:native("y") @:dox(hide) @:noCompletion private var _y:Float; // Vector y component
}

@:include("raylib.h")
@:native("cpp.Reference<Vector2>")
extern private class Vector2Ref extends RayVector2 {
}

@:include("raylib.h")
@:native("cpp.Struct<Vector2>")
extern class Vector2 extends Vector2Ref {
    public var x(get, set):Float;
    private inline function get_x():Float { return  _x; }
    private inline function set_x(value:Float):Float { _x =  value; return value; }

    public var y(get, set):Float;
    private inline function get_y():Float { return  _y; }
    private inline function set_y(value:Float):Float { _y =  value; return value; }

    public static inline function create(x:Float, y:Float):Vector2 {
        var t:RayVector2 = untyped __cpp__("{ (float){0}, (float){1} }", x, y);
        return cast t;
    }

    public static inline function createEmpty():Vector2 {
        var t:RayVector2 = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Vector3, 3 components
@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern private class RayVector3 {
    @:native("x") @:dox(hide) @:noCompletion private var _x:Float; // Vector x component
    @:native("y") @:dox(hide) @:noCompletion private var _y:Float; // Vector y component
    @:native("z") @:dox(hide) @:noCompletion private var _z:Float; // Vector z component
}

@:include("raylib.h")
@:native("cpp.Reference<Vector3>")
extern private class Vector3Ref extends RayVector3 {
}

@:include("raylib.h")
@:native("cpp.Struct<Vector3>")
extern class Vector3 extends Vector3Ref {
    public var x(get, set):Float;
    private inline function get_x():Float { return  _x; }
    private inline function set_x(value:Float):Float { _x =  value; return value; }

    public var y(get, set):Float;
    private inline function get_y():Float { return  _y; }
    private inline function set_y(value:Float):Float { _y =  value; return value; }

    public var z(get, set):Float;
    private inline function get_z():Float { return  _z; }
    private inline function set_z(value:Float):Float { _z =  value; return value; }

    public static inline function create(x:Float, y:Float, z:Float):Vector3 {
        var t:RayVector3 = untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
        return cast t;
    }

    public static inline function createEmpty():Vector3 {
        var t:RayVector3 = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Vector4, 4 components
@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern private class RayVector4 {
    @:native("x") @:dox(hide) @:noCompletion private var _x:Float; // Vector x component
    @:native("y") @:dox(hide) @:noCompletion private var _y:Float; // Vector y component
    @:native("z") @:dox(hide) @:noCompletion private var _z:Float; // Vector z component
    @:native("w") @:dox(hide) @:noCompletion private var _w:Float; // Vector w component
}

@:include("raylib.h")
@:native("cpp.Reference<Vector4>")
extern private class Vector4Ref extends RayVector4 {
}

@:include("raylib.h")
@:native("cpp.Struct<Vector4>")
extern class Vector4 extends Vector4Ref {
    public var x(get, set):Float;
    private inline function get_x():Float { return  _x; }
    private inline function set_x(value:Float):Float { _x =  value; return value; }

    public var y(get, set):Float;
    private inline function get_y():Float { return  _y; }
    private inline function set_y(value:Float):Float { _y =  value; return value; }

    public var z(get, set):Float;
    private inline function get_z():Float { return  _z; }
    private inline function set_z(value:Float):Float { _z =  value; return value; }

    public var w(get, set):Float;
    private inline function get_w():Float { return  _w; }
    private inline function set_w(value:Float):Float { _w =  value; return value; }

    public static inline function create(x:Float, y:Float, z:Float, w:Float):Vector4 {
        var t:RayVector4 = untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, z, w);
        return cast t;
    }

    public static inline function createEmpty():Vector4 {
        var t:RayVector4 = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Matrix, 4x4 components, column major, OpenGL style, right handed
@:include("raylib.h")
@:native("Matrix")
@:structAccess
extern private class RayMatrix {
    @:native("m0") @:dox(hide) @:noCompletion private var _m0:Float; // Matrix first row (4 components)
    @:native("m4") @:dox(hide) @:noCompletion private var _m4:Float; // Matrix first row (4 components)
    @:native("m8") @:dox(hide) @:noCompletion private var _m8:Float; // Matrix first row (4 components)
    @:native("m12") @:dox(hide) @:noCompletion private var _m12:Float; // Matrix first row (4 components)
    @:native("m1") @:dox(hide) @:noCompletion private var _m1:Float; // Matrix second row (4 components)
    @:native("m5") @:dox(hide) @:noCompletion private var _m5:Float; // Matrix second row (4 components)
    @:native("m9") @:dox(hide) @:noCompletion private var _m9:Float; // Matrix second row (4 components)
    @:native("m13") @:dox(hide) @:noCompletion private var _m13:Float; // Matrix second row (4 components)
    @:native("m2") @:dox(hide) @:noCompletion private var _m2:Float; // Matrix third row (4 components)
    @:native("m6") @:dox(hide) @:noCompletion private var _m6:Float; // Matrix third row (4 components)
    @:native("m10") @:dox(hide) @:noCompletion private var _m10:Float; // Matrix third row (4 components)
    @:native("m14") @:dox(hide) @:noCompletion private var _m14:Float; // Matrix third row (4 components)
    @:native("m3") @:dox(hide) @:noCompletion private var _m3:Float; // Matrix fourth row (4 components)
    @:native("m7") @:dox(hide) @:noCompletion private var _m7:Float; // Matrix fourth row (4 components)
    @:native("m11") @:dox(hide) @:noCompletion private var _m11:Float; // Matrix fourth row (4 components)
    @:native("m15") @:dox(hide) @:noCompletion private var _m15:Float; // Matrix fourth row (4 components)
}

@:include("raylib.h")
@:native("cpp.Reference<Matrix>")
extern private class MatrixRef extends RayMatrix {
}

@:include("raylib.h")
@:native("cpp.Struct<Matrix>")
extern class Matrix extends MatrixRef {
    public var m0(get, set):Float;
    private inline function get_m0():Float { return  _m0; }
    private inline function set_m0(value:Float):Float { _m0 =  value; return value; }

    public var m4(get, set):Float;
    private inline function get_m4():Float { return  _m4; }
    private inline function set_m4(value:Float):Float { _m4 =  value; return value; }

    public var m8(get, set):Float;
    private inline function get_m8():Float { return  _m8; }
    private inline function set_m8(value:Float):Float { _m8 =  value; return value; }

    public var m12(get, set):Float;
    private inline function get_m12():Float { return  _m12; }
    private inline function set_m12(value:Float):Float { _m12 =  value; return value; }

    public var m1(get, set):Float;
    private inline function get_m1():Float { return  _m1; }
    private inline function set_m1(value:Float):Float { _m1 =  value; return value; }

    public var m5(get, set):Float;
    private inline function get_m5():Float { return  _m5; }
    private inline function set_m5(value:Float):Float { _m5 =  value; return value; }

    public var m9(get, set):Float;
    private inline function get_m9():Float { return  _m9; }
    private inline function set_m9(value:Float):Float { _m9 =  value; return value; }

    public var m13(get, set):Float;
    private inline function get_m13():Float { return  _m13; }
    private inline function set_m13(value:Float):Float { _m13 =  value; return value; }

    public var m2(get, set):Float;
    private inline function get_m2():Float { return  _m2; }
    private inline function set_m2(value:Float):Float { _m2 =  value; return value; }

    public var m6(get, set):Float;
    private inline function get_m6():Float { return  _m6; }
    private inline function set_m6(value:Float):Float { _m6 =  value; return value; }

    public var m10(get, set):Float;
    private inline function get_m10():Float { return  _m10; }
    private inline function set_m10(value:Float):Float { _m10 =  value; return value; }

    public var m14(get, set):Float;
    private inline function get_m14():Float { return  _m14; }
    private inline function set_m14(value:Float):Float { _m14 =  value; return value; }

    public var m3(get, set):Float;
    private inline function get_m3():Float { return  _m3; }
    private inline function set_m3(value:Float):Float { _m3 =  value; return value; }

    public var m7(get, set):Float;
    private inline function get_m7():Float { return  _m7; }
    private inline function set_m7(value:Float):Float { _m7 =  value; return value; }

    public var m11(get, set):Float;
    private inline function get_m11():Float { return  _m11; }
    private inline function set_m11(value:Float):Float { _m11 =  value; return value; }

    public var m15(get, set):Float;
    private inline function get_m15():Float { return  _m15; }
    private inline function set_m15(value:Float):Float { _m15 =  value; return value; }

    public static inline function create(m0:Float, m4:Float, m8:Float, m12:Float, m1:Float, m5:Float, m9:Float, m13:Float, m2:Float, m6:Float, m10:Float, m14:Float, m3:Float, m7:Float, m11:Float, m15:Float):Matrix {
        var t:RayMatrix = untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7}, (float){8}, (float){9}, (float){10}, (float){11}, (float){12}, (float){13}, (float){14}, (float){15} }", m0, m4, m8, m12, m1, m5, m9, m13, m2, m6, m10, m14, m3, m7, m11, m15);
        return cast t;
    }

    public static inline function createEmpty():Matrix {
        var t:RayMatrix = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Color, 4 components, R8G8B8A8 (32bit)
@:include("raylib.h")
@:native("Color")
@:structAccess
extern private class RayColor {
    @:native("r") @:dox(hide) @:noCompletion private var _r:cpp.UInt8; // Color red value
    @:native("g") @:dox(hide) @:noCompletion private var _g:cpp.UInt8; // Color green value
    @:native("b") @:dox(hide) @:noCompletion private var _b:cpp.UInt8; // Color blue value
    @:native("a") @:dox(hide) @:noCompletion private var _a:cpp.UInt8; // Color alpha value
}

@:include("raylib.h")
@:native("cpp.Reference<Color>")
extern private class ColorRef extends RayColor {
}

@:include("raylib.h")
@:native("cpp.Struct<Color>")
extern class Color extends ColorRef {
    public var r(get, set):cpp.UInt8;
    private inline function get_r():cpp.UInt8 { return cast _r; }
    private inline function set_r(value:cpp.UInt8):cpp.UInt8 { _r = cast value; return value; }

    public var g(get, set):cpp.UInt8;
    private inline function get_g():cpp.UInt8 { return cast _g; }
    private inline function set_g(value:cpp.UInt8):cpp.UInt8 { _g = cast value; return value; }

    public var b(get, set):cpp.UInt8;
    private inline function get_b():cpp.UInt8 { return cast _b; }
    private inline function set_b(value:cpp.UInt8):cpp.UInt8 { _b = cast value; return value; }

    public var a(get, set):cpp.UInt8;
    private inline function get_a():cpp.UInt8 { return cast _a; }
    private inline function set_a(value:cpp.UInt8):cpp.UInt8 { _a = cast value; return value; }

    public static inline function create(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Color {
        var t:RayColor = untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
        return cast t;
    }

    public static inline function createEmpty():Color {
        var t:RayColor = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Rectangle, 4 components
@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern private class RayRectangle {
    @:native("x") @:dox(hide) @:noCompletion private var _x:Float; // Rectangle top-left corner position x
    @:native("y") @:dox(hide) @:noCompletion private var _y:Float; // Rectangle top-left corner position y
    @:native("width") @:dox(hide) @:noCompletion private var _width:Float; // Rectangle width
    @:native("height") @:dox(hide) @:noCompletion private var _height:Float; // Rectangle height
}

@:include("raylib.h")
@:native("cpp.Reference<Rectangle>")
extern private class RectangleRef extends RayRectangle {
}

@:include("raylib.h")
@:native("cpp.Struct<Rectangle>")
extern class Rectangle extends RectangleRef {
    public var x(get, set):Float;
    private inline function get_x():Float { return  _x; }
    private inline function set_x(value:Float):Float { _x =  value; return value; }

    public var y(get, set):Float;
    private inline function get_y():Float { return  _y; }
    private inline function set_y(value:Float):Float { _y =  value; return value; }

    public var width(get, set):Float;
    private inline function get_width():Float { return  _width; }
    private inline function set_width(value:Float):Float { _width =  value; return value; }

    public var height(get, set):Float;
    private inline function get_height():Float { return  _height; }
    private inline function set_height(value:Float):Float { _height =  value; return value; }

    public static inline function create(x:Float, y:Float, width:Float, height:Float):Rectangle {
        var t:RayRectangle = untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, width, height);
        return cast t;
    }

    public static inline function createEmpty():Rectangle {
        var t:RayRectangle = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Image, pixel data stored in CPU memory (RAM)
@:include("raylib.h")
@:native("Image")
@:structAccess
extern private class RayImage {
    @:native("data") @:dox(hide) @:noCompletion private var _data:cpp.RawPointer<cpp.Void>; // Image raw data
    @:native("width") @:dox(hide) @:noCompletion private var _width:Int; // Image base width
    @:native("height") @:dox(hide) @:noCompletion private var _height:Int; // Image base height
    @:native("mipmaps") @:dox(hide) @:noCompletion private var _mipmaps:Int; // Mipmap levels, 1 by default
    @:native("format") @:dox(hide) @:noCompletion private var _format:Int; // Data format (PixelFormat type)
}

@:include("raylib.h")
@:native("cpp.Reference<Image>")
extern private class ImageRef extends RayImage {
}

@:include("raylib.h")
@:native("cpp.Struct<Image>")
extern class Image extends ImageRef {
    public var data(get, set):cpp.RawPointer<cpp.Void>;
    private inline function get_data():cpp.RawPointer<cpp.Void> { return cast _data; }
    private inline function set_data(value:cpp.RawPointer<cpp.Void>):cpp.RawPointer<cpp.Void> { _data = cast value; return value; }

    public var width(get, set):Int;
    private inline function get_width():Int { return  _width; }
    private inline function set_width(value:Int):Int { _width =  value; return value; }

    public var height(get, set):Int;
    private inline function get_height():Int { return  _height; }
    private inline function set_height(value:Int):Int { _height =  value; return value; }

    public var mipmaps(get, set):Int;
    private inline function get_mipmaps():Int { return  _mipmaps; }
    private inline function set_mipmaps(value:Int):Int { _mipmaps =  value; return value; }

    public var format(get, set):Int;
    private inline function get_format():Int { return  _format; }
    private inline function set_format(value:Int):Int { _format =  value; return value; }

    public static inline function create(data:cpp.RawPointer<cpp.Void>, width:Int, height:Int, mipmaps:Int, format:Int):Image {
        var t:RayImage = untyped __cpp__("{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
        return cast t;
    }

    public static inline function createEmpty():Image {
        var t:RayImage = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Texture alias
typedef TextureCubemap = Texture;
typedef RayTextureCubemap = RayTexture;

// Texture alias
typedef Texture2D = Texture;
typedef RayTexture2D = RayTexture;

// Texture, tex data stored in GPU memory (VRAM)
@:include("raylib.h")
@:native("Texture")
@:structAccess
extern private class RayTexture {
    @:native("id") @:dox(hide) @:noCompletion private var _id:Int; // OpenGL texture id
    @:native("width") @:dox(hide) @:noCompletion private var _width:Int; // Texture base width
    @:native("height") @:dox(hide) @:noCompletion private var _height:Int; // Texture base height
    @:native("mipmaps") @:dox(hide) @:noCompletion private var _mipmaps:Int; // Mipmap levels, 1 by default
    @:native("format") @:dox(hide) @:noCompletion private var _format:Int; // Data format (PixelFormat type)
}

@:include("raylib.h")
@:native("cpp.Reference<Texture>")
extern private class TextureRef extends RayTexture {
}

@:include("raylib.h")
@:native("cpp.Struct<Texture>")
extern class Texture extends TextureRef {
    public var id(get, set):Int;
    private inline function get_id():Int { return  _id; }
    private inline function set_id(value:Int):Int { _id =  value; return value; }

    public var width(get, set):Int;
    private inline function get_width():Int { return  _width; }
    private inline function set_width(value:Int):Int { _width =  value; return value; }

    public var height(get, set):Int;
    private inline function get_height():Int { return  _height; }
    private inline function set_height(value:Int):Int { _height =  value; return value; }

    public var mipmaps(get, set):Int;
    private inline function get_mipmaps():Int { return  _mipmaps; }
    private inline function set_mipmaps(value:Int):Int { _mipmaps =  value; return value; }

    public var format(get, set):Int;
    private inline function get_format():Int { return  _format; }
    private inline function set_format(value:Int):Int { _format =  value; return value; }

    public static inline function create(id:Int, width:Int, height:Int, mipmaps:Int, format:Int):Texture {
        var t:RayTexture = untyped __cpp__("{ (unsigned int){0}, (int){1}, (int){2}, (int){3}, (int){4} }", id, width, height, mipmaps, format);
        return cast t;
    }

    public static inline function createEmpty():Texture {
        var t:RayTexture = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// RenderTexture alias
typedef RenderTexture2D = RenderTexture;
typedef RayRenderTexture2D = RayRenderTexture;

// RenderTexture, fbo for texture rendering
@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern private class RayRenderTexture {
    @:native("id") @:dox(hide) @:noCompletion private var _id:Int; // OpenGL framebuffer object id
    @:native("texture") @:dox(hide) @:noCompletion private var _texture:RayTexture; // Color buffer attachment texture
    @:native("depth") @:dox(hide) @:noCompletion private var _depth:RayTexture; // Depth buffer attachment texture
}

@:include("raylib.h")
@:native("cpp.Reference<RenderTexture>")
extern private class RenderTextureRef extends RayRenderTexture {
}

@:include("raylib.h")
@:native("cpp.Struct<RenderTexture>")
extern class RenderTexture extends RenderTextureRef {
    public var id(get, set):Int;
    private inline function get_id():Int { return  _id; }
    private inline function set_id(value:Int):Int { _id =  value; return value; }

    public var texture(get, set):Texture;
    private inline function get_texture():Texture { return cast _texture; }
    private inline function set_texture(value:Texture):Texture { _texture = cast value; return value; }

    public var depth(get, set):Texture;
    private inline function get_depth():Texture { return cast _depth; }
    private inline function set_depth(value:Texture):Texture { _depth = cast value; return value; }

    public static inline function create(id:Int, texture:RayTexture, depth:RayTexture):RenderTexture {
        var t:RayRenderTexture = untyped __cpp__("{ (unsigned int){0}, (Texture){1}, (Texture){2} }", id, texture, depth);
        return cast t;
    }

    public static inline function createEmpty():RenderTexture {
        var t:RayRenderTexture = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// NPatchInfo, n-patch layout info
@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern private class RayNPatchInfo {
    @:native("source") @:dox(hide) @:noCompletion private var _source:RayRectangle; // Texture source rectangle
    @:native("left") @:dox(hide) @:noCompletion private var _left:Int; // Left border offset
    @:native("top") @:dox(hide) @:noCompletion private var _top:Int; // Top border offset
    @:native("right") @:dox(hide) @:noCompletion private var _right:Int; // Right border offset
    @:native("bottom") @:dox(hide) @:noCompletion private var _bottom:Int; // Bottom border offset
    @:native("layout") @:dox(hide) @:noCompletion private var _layout:Int; // Layout of the n-patch: 3x3, 1x3 or 3x1
}

@:include("raylib.h")
@:native("cpp.Reference<NPatchInfo>")
extern private class NPatchInfoRef extends RayNPatchInfo {
}

@:include("raylib.h")
@:native("cpp.Struct<NPatchInfo>")
extern class NPatchInfo extends NPatchInfoRef {
    public var source(get, set):Rectangle;
    private inline function get_source():Rectangle { return cast _source; }
    private inline function set_source(value:Rectangle):Rectangle { _source = cast value; return value; }

    public var left(get, set):Int;
    private inline function get_left():Int { return  _left; }
    private inline function set_left(value:Int):Int { _left =  value; return value; }

    public var top(get, set):Int;
    private inline function get_top():Int { return  _top; }
    private inline function set_top(value:Int):Int { _top =  value; return value; }

    public var right(get, set):Int;
    private inline function get_right():Int { return  _right; }
    private inline function set_right(value:Int):Int { _right =  value; return value; }

    public var bottom(get, set):Int;
    private inline function get_bottom():Int { return  _bottom; }
    private inline function set_bottom(value:Int):Int { _bottom =  value; return value; }

    public var layout(get, set):Int;
    private inline function get_layout():Int { return  _layout; }
    private inline function set_layout(value:Int):Int { _layout =  value; return value; }

    public static inline function create(source:RayRectangle, left:Int, top:Int, right:Int, bottom:Int, layout:Int):NPatchInfo {
        var t:RayNPatchInfo = untyped __cpp__("{ (Rectangle){0}, (int){1}, (int){2}, (int){3}, (int){4}, (int){5} }", source, left, top, right, bottom, layout);
        return cast t;
    }

    public static inline function createEmpty():NPatchInfo {
        var t:RayNPatchInfo = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// GlyphInfo, font characters glyphs info
@:include("raylib.h")
@:native("GlyphInfo")
@:structAccess
extern private class RayGlyphInfo {
    @:native("value") @:dox(hide) @:noCompletion private var _value:Int; // Character value (Unicode)
    @:native("offsetX") @:dox(hide) @:noCompletion private var _offsetX:Int; // Character offset X when drawing
    @:native("offsetY") @:dox(hide) @:noCompletion private var _offsetY:Int; // Character offset Y when drawing
    @:native("advanceX") @:dox(hide) @:noCompletion private var _advanceX:Int; // Character advance position X
    @:native("image") @:dox(hide) @:noCompletion private var _image:RayImage; // Character image data
}

@:include("raylib.h")
@:native("cpp.Reference<GlyphInfo>")
extern private class GlyphInfoRef extends RayGlyphInfo {
}

@:include("raylib.h")
@:native("cpp.Struct<GlyphInfo>")
extern class GlyphInfo extends GlyphInfoRef {
    public var value(get, set):Int;
    private inline function get_value():Int { return  _value; }
    private inline function set_value(value:Int):Int { _value =  value; return value; }

    public var offsetX(get, set):Int;
    private inline function get_offsetX():Int { return  _offsetX; }
    private inline function set_offsetX(value:Int):Int { _offsetX =  value; return value; }

    public var offsetY(get, set):Int;
    private inline function get_offsetY():Int { return  _offsetY; }
    private inline function set_offsetY(value:Int):Int { _offsetY =  value; return value; }

    public var advanceX(get, set):Int;
    private inline function get_advanceX():Int { return  _advanceX; }
    private inline function set_advanceX(value:Int):Int { _advanceX =  value; return value; }

    public var image(get, set):Image;
    private inline function get_image():Image { return cast _image; }
    private inline function set_image(value:Image):Image { _image = cast value; return value; }

    public static inline function create(value:Int, offsetX:Int, offsetY:Int, advanceX:Int, image:RayImage):GlyphInfo {
        var t:RayGlyphInfo = untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (int){3}, (Image){4} }", value, offsetX, offsetY, advanceX, image);
        return cast t;
    }

    public static inline function createEmpty():GlyphInfo {
        var t:RayGlyphInfo = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Font, font texture and GlyphInfo array data
@:include("raylib.h")
@:native("Font")
@:structAccess
extern private class RayFont {
    @:native("baseSize") @:dox(hide) @:noCompletion private var _baseSize:Int; // Base size (default chars height)
    @:native("glyphCount") @:dox(hide) @:noCompletion private var _glyphCount:Int; // Number of glyph characters
    @:native("glyphPadding") @:dox(hide) @:noCompletion private var _glyphPadding:Int; // Padding around the glyph characters
    @:native("texture") @:dox(hide) @:noCompletion private var _texture:RayTexture; // Texture atlas containing the glyphs
    @:native("recs") @:dox(hide) @:noCompletion private var _recs:cpp.RawPointer<RayRectangle>; // Rectangles in texture for the glyphs
    @:native("glyphs") @:dox(hide) @:noCompletion private var _glyphs:cpp.RawPointer<RayGlyphInfo>; // Glyphs info data
}

@:include("raylib.h")
@:native("cpp.Reference<Font>")
extern private class FontRef extends RayFont {
}

@:include("raylib.h")
@:native("cpp.Struct<Font>")
extern class Font extends FontRef {
    public var baseSize(get, set):Int;
    private inline function get_baseSize():Int { return  _baseSize; }
    private inline function set_baseSize(value:Int):Int { _baseSize =  value; return value; }

    public var glyphCount(get, set):Int;
    private inline function get_glyphCount():Int { return  _glyphCount; }
    private inline function set_glyphCount(value:Int):Int { _glyphCount =  value; return value; }

    public var glyphPadding(get, set):Int;
    private inline function get_glyphPadding():Int { return  _glyphPadding; }
    private inline function set_glyphPadding(value:Int):Int { _glyphPadding =  value; return value; }

    public var texture(get, set):Texture2D;
    private inline function get_texture():Texture2D { return cast _texture; }
    private inline function set_texture(value:Texture2D):Texture2D { _texture = cast value; return value; }

    public var recs(get, set):cpp.RawPointer<Rectangle>;
    private inline function get_recs():cpp.RawPointer<Rectangle> { return cast _recs; }
    private inline function set_recs(value:cpp.RawPointer<Rectangle>):cpp.RawPointer<Rectangle> { _recs = cast value; return value; }

    public var glyphs(get, set):cpp.RawPointer<GlyphInfo>;
    private inline function get_glyphs():cpp.RawPointer<GlyphInfo> { return cast _glyphs; }
    private inline function set_glyphs(value:cpp.RawPointer<GlyphInfo>):cpp.RawPointer<GlyphInfo> { _glyphs = cast value; return value; }

    public static inline function create(baseSize:Int, glyphCount:Int, glyphPadding:Int, texture:RayTexture, recs:cpp.RawPointer<RayRectangle>, glyphs:cpp.RawPointer<RayGlyphInfo>):Font {
        var t:RayFont = untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (Texture2D){3}, (Rectangle *){4}, (GlyphInfo *){5} }", baseSize, glyphCount, glyphPadding, texture, recs, glyphs);
        return cast t;
    }

    public static inline function createEmpty():Font {
        var t:RayFont = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Camera3D alias
typedef Camera = Camera3D;
typedef RayCamera = RayCamera3D;

// Camera, defines position/orientation in 3d space
@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern private class RayCamera3D {
    @:native("position") @:dox(hide) @:noCompletion private var _position:RayVector3; // Camera position
    @:native("target") @:dox(hide) @:noCompletion private var _target:RayVector3; // Camera target it looks-at
    @:native("up") @:dox(hide) @:noCompletion private var _up:RayVector3; // Camera up vector (rotation over its axis)
    @:native("fovy") @:dox(hide) @:noCompletion private var _fovy:Float; // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
    @:native("projection") @:dox(hide) @:noCompletion private var _projection:Int; // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
}

@:include("raylib.h")
@:native("cpp.Reference<Camera3D>")
extern private class Camera3DRef extends RayCamera3D {
}

@:include("raylib.h")
@:native("cpp.Struct<Camera3D>")
extern class Camera3D extends Camera3DRef {
    public var position(get, set):Vector3;
    private inline function get_position():Vector3 { return cast _position; }
    private inline function set_position(value:Vector3):Vector3 { _position = cast value; return value; }

    public var target(get, set):Vector3;
    private inline function get_target():Vector3 { return cast _target; }
    private inline function set_target(value:Vector3):Vector3 { _target = cast value; return value; }

    public var up(get, set):Vector3;
    private inline function get_up():Vector3 { return cast _up; }
    private inline function set_up(value:Vector3):Vector3 { _up = cast value; return value; }

    public var fovy(get, set):Float;
    private inline function get_fovy():Float { return  _fovy; }
    private inline function set_fovy(value:Float):Float { _fovy =  value; return value; }

    public var projection(get, set):Int;
    private inline function get_projection():Int { return  _projection; }
    private inline function set_projection(value:Int):Int { _projection =  value; return value; }

    public static inline function create(position:RayVector3, target:RayVector3, up:RayVector3, fovy:Float, projection:Int):Camera3D {
        var t:RayCamera3D = untyped __cpp__("{ (Vector3){0}, (Vector3){1}, (Vector3){2}, (float){3}, (int){4} }", position, target, up, fovy, projection);
        return cast t;
    }

    public static inline function createEmpty():Camera3D {
        var t:RayCamera3D = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Camera2D, defines position/orientation in 2d space
@:include("raylib.h")
@:native("Camera2D")
@:structAccess
extern private class RayCamera2D {
    @:native("offset") @:dox(hide) @:noCompletion private var _offset:RayVector2; // Camera offset (displacement from target)
    @:native("target") @:dox(hide) @:noCompletion private var _target:RayVector2; // Camera target (rotation and zoom origin)
    @:native("rotation") @:dox(hide) @:noCompletion private var _rotation:Float; // Camera rotation in degrees
    @:native("zoom") @:dox(hide) @:noCompletion private var _zoom:Float; // Camera zoom (scaling), should be 1.0f by default
}

@:include("raylib.h")
@:native("cpp.Reference<Camera2D>")
extern private class Camera2DRef extends RayCamera2D {
}

@:include("raylib.h")
@:native("cpp.Struct<Camera2D>")
extern class Camera2D extends Camera2DRef {
    public var offset(get, set):Vector2;
    private inline function get_offset():Vector2 { return cast _offset; }
    private inline function set_offset(value:Vector2):Vector2 { _offset = cast value; return value; }

    public var target(get, set):Vector2;
    private inline function get_target():Vector2 { return cast _target; }
    private inline function set_target(value:Vector2):Vector2 { _target = cast value; return value; }

    public var rotation(get, set):Float;
    private inline function get_rotation():Float { return  _rotation; }
    private inline function set_rotation(value:Float):Float { _rotation =  value; return value; }

    public var zoom(get, set):Float;
    private inline function get_zoom():Float { return  _zoom; }
    private inline function set_zoom(value:Float):Float { _zoom =  value; return value; }

    public static inline function create(offset:RayVector2, target:RayVector2, rotation:Float, zoom:Float):Camera2D {
        var t:RayCamera2D = untyped __cpp__("{ (Vector2){0}, (Vector2){1}, (float){2}, (float){3} }", offset, target, rotation, zoom);
        return cast t;
    }

    public static inline function createEmpty():Camera2D {
        var t:RayCamera2D = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Mesh, vertex data and vao/vbo
@:include("raylib.h")
@:native("Mesh")
@:structAccess
extern private class RayMesh {
    @:native("vertexCount") @:dox(hide) @:noCompletion private var _vertexCount:Int; // Number of vertices stored in arrays
    @:native("triangleCount") @:dox(hide) @:noCompletion private var _triangleCount:Int; // Number of triangles stored (indexed or not)
    @:native("vertices") @:dox(hide) @:noCompletion private var _vertices:cpp.RawPointer<Float>; // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    @:native("texcoords") @:dox(hide) @:noCompletion private var _texcoords:cpp.RawPointer<Float>; // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    @:native("texcoords2") @:dox(hide) @:noCompletion private var _texcoords2:cpp.RawPointer<Float>; // Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    @:native("normals") @:dox(hide) @:noCompletion private var _normals:cpp.RawPointer<Float>; // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    @:native("tangents") @:dox(hide) @:noCompletion private var _tangents:cpp.RawPointer<Float>; // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
    @:native("colors") @:dox(hide) @:noCompletion private var _colors:cpp.RawPointer<cpp.UInt8>; // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    @:native("indices") @:dox(hide) @:noCompletion private var _indices:cpp.RawPointer<Int>; // Vertex indices (in case vertex data comes indexed)
    @:native("animVertices") @:dox(hide) @:noCompletion private var _animVertices:cpp.RawPointer<Float>; // Animated vertex positions (after bones transformations)
    @:native("animNormals") @:dox(hide) @:noCompletion private var _animNormals:cpp.RawPointer<Float>; // Animated normals (after bones transformations)
    @:native("boneIds") @:dox(hide) @:noCompletion private var _boneIds:cpp.RawPointer<cpp.UInt8>; // Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
    @:native("boneWeights") @:dox(hide) @:noCompletion private var _boneWeights:cpp.RawPointer<Float>; // Vertex bone weight, up to 4 bones influence by vertex (skinning)
    @:native("vaoId") @:dox(hide) @:noCompletion private var _vaoId:Int; // OpenGL Vertex Array Object id
    @:native("vboId") @:dox(hide) @:noCompletion private var _vboId:cpp.RawPointer<Int>; // OpenGL Vertex Buffer Objects id (default vertex data)
}

@:include("raylib.h")
@:native("cpp.Reference<Mesh>")
extern private class MeshRef extends RayMesh {
}

@:include("raylib.h")
@:native("cpp.Struct<Mesh>")
extern class Mesh extends MeshRef {
    public var vertexCount(get, set):Int;
    private inline function get_vertexCount():Int { return  _vertexCount; }
    private inline function set_vertexCount(value:Int):Int { _vertexCount =  value; return value; }

    public var triangleCount(get, set):Int;
    private inline function get_triangleCount():Int { return  _triangleCount; }
    private inline function set_triangleCount(value:Int):Int { _triangleCount =  value; return value; }

    public var vertices(get, set):cpp.RawPointer<Float>;
    private inline function get_vertices():cpp.RawPointer<Float> { return cast _vertices; }
    private inline function set_vertices(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _vertices = cast value; return value; }

    public var texcoords(get, set):cpp.RawPointer<Float>;
    private inline function get_texcoords():cpp.RawPointer<Float> { return cast _texcoords; }
    private inline function set_texcoords(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _texcoords = cast value; return value; }

    public var texcoords2(get, set):cpp.RawPointer<Float>;
    private inline function get_texcoords2():cpp.RawPointer<Float> { return cast _texcoords2; }
    private inline function set_texcoords2(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _texcoords2 = cast value; return value; }

    public var normals(get, set):cpp.RawPointer<Float>;
    private inline function get_normals():cpp.RawPointer<Float> { return cast _normals; }
    private inline function set_normals(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _normals = cast value; return value; }

    public var tangents(get, set):cpp.RawPointer<Float>;
    private inline function get_tangents():cpp.RawPointer<Float> { return cast _tangents; }
    private inline function set_tangents(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _tangents = cast value; return value; }

    public var colors(get, set):cpp.RawPointer<cpp.UInt8>;
    private inline function get_colors():cpp.RawPointer<cpp.UInt8> { return cast _colors; }
    private inline function set_colors(value:cpp.RawPointer<cpp.UInt8>):cpp.RawPointer<cpp.UInt8> { _colors = cast value; return value; }

    public var indices(get, set):cpp.RawPointer<Int>;
    private inline function get_indices():cpp.RawPointer<Int> { return cast _indices; }
    private inline function set_indices(value:cpp.RawPointer<Int>):cpp.RawPointer<Int> { _indices = cast value; return value; }

    public var animVertices(get, set):cpp.RawPointer<Float>;
    private inline function get_animVertices():cpp.RawPointer<Float> { return cast _animVertices; }
    private inline function set_animVertices(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _animVertices = cast value; return value; }

    public var animNormals(get, set):cpp.RawPointer<Float>;
    private inline function get_animNormals():cpp.RawPointer<Float> { return cast _animNormals; }
    private inline function set_animNormals(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _animNormals = cast value; return value; }

    public var boneIds(get, set):cpp.RawPointer<cpp.UInt8>;
    private inline function get_boneIds():cpp.RawPointer<cpp.UInt8> { return cast _boneIds; }
    private inline function set_boneIds(value:cpp.RawPointer<cpp.UInt8>):cpp.RawPointer<cpp.UInt8> { _boneIds = cast value; return value; }

    public var boneWeights(get, set):cpp.RawPointer<Float>;
    private inline function get_boneWeights():cpp.RawPointer<Float> { return cast _boneWeights; }
    private inline function set_boneWeights(value:cpp.RawPointer<Float>):cpp.RawPointer<Float> { _boneWeights = cast value; return value; }

    public var vaoId(get, set):Int;
    private inline function get_vaoId():Int { return  _vaoId; }
    private inline function set_vaoId(value:Int):Int { _vaoId =  value; return value; }

    public var vboId(get, set):cpp.RawPointer<Int>;
    private inline function get_vboId():cpp.RawPointer<Int> { return cast _vboId; }
    private inline function set_vboId(value:cpp.RawPointer<Int>):cpp.RawPointer<Int> { _vboId = cast value; return value; }

    public static inline function create(vertexCount:Int, triangleCount:Int, vertices:cpp.RawPointer<Float>, texcoords:cpp.RawPointer<Float>, texcoords2:cpp.RawPointer<Float>, normals:cpp.RawPointer<Float>, tangents:cpp.RawPointer<Float>, colors:cpp.RawPointer<cpp.UInt8>, indices:cpp.RawPointer<Int>, animVertices:cpp.RawPointer<Float>, animNormals:cpp.RawPointer<Float>, boneIds:cpp.RawPointer<cpp.UInt8>, boneWeights:cpp.RawPointer<Float>, vaoId:Int, vboId:cpp.RawPointer<Int>):Mesh {
        var t:RayMesh = untyped __cpp__("{ (int){0}, (int){1}, (float *){2}, (float *){3}, (float *){4}, (float *){5}, (float *){6}, (unsigned char *){7}, (unsigned short *){8}, (float *){9}, (float *){10}, (unsigned char *){11}, (float *){12}, (unsigned int){13}, (unsigned int *){14} }", vertexCount, triangleCount, vertices, texcoords, texcoords2, normals, tangents, colors, indices, animVertices, animNormals, boneIds, boneWeights, vaoId, vboId);
        return cast t;
    }

    public static inline function createEmpty():Mesh {
        var t:RayMesh = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Shader
@:include("raylib.h")
@:native("Shader")
@:structAccess
extern private class RayShader {
    @:native("id") @:dox(hide) @:noCompletion private var _id:Int; // Shader program id
    @:native("locs") @:dox(hide) @:noCompletion private var _locs:cpp.RawPointer<Int>; // Shader locations array (RL_MAX_SHADER_LOCATIONS)
}

@:include("raylib.h")
@:native("cpp.Reference<Shader>")
extern private class ShaderRef extends RayShader {
}

@:include("raylib.h")
@:native("cpp.Struct<Shader>")
extern class Shader extends ShaderRef {
    public var id(get, set):Int;
    private inline function get_id():Int { return  _id; }
    private inline function set_id(value:Int):Int { _id =  value; return value; }

    public var locs(get, set):cpp.RawPointer<Int>;
    private inline function get_locs():cpp.RawPointer<Int> { return cast _locs; }
    private inline function set_locs(value:cpp.RawPointer<Int>):cpp.RawPointer<Int> { _locs = cast value; return value; }

    public static inline function create(id:Int, locs:cpp.RawPointer<Int>):Shader {
        var t:RayShader = untyped __cpp__("{ (unsigned int){0}, (int *){1} }", id, locs);
        return cast t;
    }

    public static inline function createEmpty():Shader {
        var t:RayShader = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// MaterialMap
@:include("raylib.h")
@:native("MaterialMap")
@:structAccess
extern private class RayMaterialMap {
    @:native("texture") @:dox(hide) @:noCompletion private var _texture:RayTexture; // Material map texture
    @:native("color") @:dox(hide) @:noCompletion private var _color:RayColor; // Material map color
    @:native("value") @:dox(hide) @:noCompletion private var _value:Float; // Material map value
}

@:include("raylib.h")
@:native("cpp.Reference<MaterialMap>")
extern private class MaterialMapRef extends RayMaterialMap {
}

@:include("raylib.h")
@:native("cpp.Struct<MaterialMap>")
extern class MaterialMap extends MaterialMapRef {
    public var texture(get, set):Texture2D;
    private inline function get_texture():Texture2D { return cast _texture; }
    private inline function set_texture(value:Texture2D):Texture2D { _texture = cast value; return value; }

    public var color(get, set):Color;
    private inline function get_color():Color { return cast _color; }
    private inline function set_color(value:Color):Color { _color = cast value; return value; }

    public var value(get, set):Float;
    private inline function get_value():Float { return  _value; }
    private inline function set_value(value:Float):Float { _value =  value; return value; }

    public static inline function create(texture:RayTexture, color:RayColor, value:Float):MaterialMap {
        var t:RayMaterialMap = untyped __cpp__("{ (Texture2D){0}, (Color){1}, (float){2} }", texture, color, value);
        return cast t;
    }

    public static inline function createEmpty():MaterialMap {
        var t:RayMaterialMap = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Material, includes shader and maps
@:include("raylib.h")
@:native("Material")
@:structAccess
extern private class RayMaterial {
    @:native("shader") @:dox(hide) @:noCompletion private var _shader:RayShader; // Material shader
    @:native("maps") @:dox(hide) @:noCompletion private var _maps:cpp.RawPointer<RayMaterialMap>; // Material maps array (MAX_MATERIAL_MAPS)
    @:native("params") @:dox(hide) @:noCompletion private var _params:Float; // Material generic parameters (if required) - TODO: cpp native array (original: "float params[4]")
}

@:include("raylib.h")
@:native("cpp.Reference<Material>")
extern private class MaterialRef extends RayMaterial {
}

@:include("raylib.h")
@:native("cpp.Struct<Material>")
extern class Material extends MaterialRef {
    public var shader(get, set):Shader;
    private inline function get_shader():Shader { return cast _shader; }
    private inline function set_shader(value:Shader):Shader { _shader = cast value; return value; }

    public var maps(get, set):cpp.RawPointer<MaterialMap>;
    private inline function get_maps():cpp.RawPointer<MaterialMap> { return cast _maps; }
    private inline function set_maps(value:cpp.RawPointer<MaterialMap>):cpp.RawPointer<MaterialMap> { _maps = cast value; return value; }

    public var params(get, set):Float;
    private inline function get_params():Float { return  _params; }
    private inline function set_params(value:Float):Float { _params =  value; return value; }

    public static inline function create(shader:RayShader, maps:cpp.RawPointer<RayMaterialMap>, params:Float):Material {
        var t:RayMaterial = untyped __cpp__("{ (Shader){0}, (MaterialMap *){1}, (float){2} }", shader, maps, params);
        return cast t;
    }

    public static inline function createEmpty():Material {
        var t:RayMaterial = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Transform, vectex transformation data
@:include("raylib.h")
@:native("Transform")
@:structAccess
extern private class RayTransform {
    @:native("translation") @:dox(hide) @:noCompletion private var _translation:RayVector3; // Translation
    @:native("rotation") @:dox(hide) @:noCompletion private var _rotation:Quaternion; // Rotation
    @:native("scale") @:dox(hide) @:noCompletion private var _scale:RayVector3; // Scale
}

@:include("raylib.h")
@:native("cpp.Reference<Transform>")
extern private class TransformRef extends RayTransform {
}

@:include("raylib.h")
@:native("cpp.Struct<Transform>")
extern class Transform extends TransformRef {
    public var translation(get, set):Vector3;
    private inline function get_translation():Vector3 { return cast _translation; }
    private inline function set_translation(value:Vector3):Vector3 { _translation = cast value; return value; }

    public var rotation(get, set):Quaternion;
    private inline function get_rotation():Quaternion { return cast _rotation; }
    private inline function set_rotation(value:Quaternion):Quaternion { _rotation = cast value; return value; }

    public var scale(get, set):Vector3;
    private inline function get_scale():Vector3 { return cast _scale; }
    private inline function set_scale(value:Vector3):Vector3 { _scale = cast value; return value; }

    public static inline function create(translation:RayVector3, rotation:Quaternion, scale:RayVector3):Transform {
        var t:RayTransform = untyped __cpp__("{ (Vector3){0}, (Quaternion){1}, (Vector3){2} }", translation, rotation, scale);
        return cast t;
    }

    public static inline function createEmpty():Transform {
        var t:RayTransform = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Bone, skeletal animation bone
@:include("raylib.h")
@:native("BoneInfo")
@:structAccess
extern private class RayBoneInfo {
    @:native("name") @:dox(hide) @:noCompletion private var _name:Int; // Bone name - TODO: cpp native array (original: "char name[32]")
    @:native("parent") @:dox(hide) @:noCompletion private var _parent:Int; // Bone parent
}

@:include("raylib.h")
@:native("cpp.Reference<BoneInfo>")
extern private class BoneInfoRef extends RayBoneInfo {
}

@:include("raylib.h")
@:native("cpp.Struct<BoneInfo>")
extern class BoneInfo extends BoneInfoRef {
    public var name(get, set):Int;
    private inline function get_name():Int { return  _name; }
    private inline function set_name(value:Int):Int { _name =  value; return value; }

    public var parent(get, set):Int;
    private inline function get_parent():Int { return  _parent; }
    private inline function set_parent(value:Int):Int { _parent =  value; return value; }

    public static inline function create(name:Int, parent:Int):BoneInfo {
        var t:RayBoneInfo = untyped __cpp__("{ (char){0}, (int){1} }", name, parent);
        return cast t;
    }

    public static inline function createEmpty():BoneInfo {
        var t:RayBoneInfo = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Model, meshes, materials and animation data
@:include("raylib.h")
@:native("Model")
@:structAccess
extern private class RayModel {
    @:native("transform") @:dox(hide) @:noCompletion private var _transform:RayMatrix; // Local transform matrix
    @:native("meshCount") @:dox(hide) @:noCompletion private var _meshCount:Int; // Number of meshes
    @:native("materialCount") @:dox(hide) @:noCompletion private var _materialCount:Int; // Number of materials
    @:native("meshes") @:dox(hide) @:noCompletion private var _meshes:cpp.RawPointer<RayMesh>; // Meshes array
    @:native("materials") @:dox(hide) @:noCompletion private var _materials:cpp.RawPointer<RayMaterial>; // Materials array
    @:native("meshMaterial") @:dox(hide) @:noCompletion private var _meshMaterial:cpp.RawPointer<Int>; // Mesh material number
    @:native("boneCount") @:dox(hide) @:noCompletion private var _boneCount:Int; // Number of bones
    @:native("bones") @:dox(hide) @:noCompletion private var _bones:cpp.RawPointer<RayBoneInfo>; // Bones information (skeleton)
    @:native("bindPose") @:dox(hide) @:noCompletion private var _bindPose:cpp.RawPointer<RayTransform>; // Bones base transformation (pose)
}

@:include("raylib.h")
@:native("cpp.Reference<Model>")
extern private class ModelRef extends RayModel {
}

@:include("raylib.h")
@:native("cpp.Struct<Model>")
extern class Model extends ModelRef {
    public var transform(get, set):Matrix;
    private inline function get_transform():Matrix { return cast _transform; }
    private inline function set_transform(value:Matrix):Matrix { _transform = cast value; return value; }

    public var meshCount(get, set):Int;
    private inline function get_meshCount():Int { return  _meshCount; }
    private inline function set_meshCount(value:Int):Int { _meshCount =  value; return value; }

    public var materialCount(get, set):Int;
    private inline function get_materialCount():Int { return  _materialCount; }
    private inline function set_materialCount(value:Int):Int { _materialCount =  value; return value; }

    public var meshes(get, set):cpp.RawPointer<Mesh>;
    private inline function get_meshes():cpp.RawPointer<Mesh> { return cast _meshes; }
    private inline function set_meshes(value:cpp.RawPointer<Mesh>):cpp.RawPointer<Mesh> { _meshes = cast value; return value; }

    public var materials(get, set):cpp.RawPointer<Material>;
    private inline function get_materials():cpp.RawPointer<Material> { return cast _materials; }
    private inline function set_materials(value:cpp.RawPointer<Material>):cpp.RawPointer<Material> { _materials = cast value; return value; }

    public var meshMaterial(get, set):cpp.RawPointer<Int>;
    private inline function get_meshMaterial():cpp.RawPointer<Int> { return cast _meshMaterial; }
    private inline function set_meshMaterial(value:cpp.RawPointer<Int>):cpp.RawPointer<Int> { _meshMaterial = cast value; return value; }

    public var boneCount(get, set):Int;
    private inline function get_boneCount():Int { return  _boneCount; }
    private inline function set_boneCount(value:Int):Int { _boneCount =  value; return value; }

    public var bones(get, set):cpp.RawPointer<BoneInfo>;
    private inline function get_bones():cpp.RawPointer<BoneInfo> { return cast _bones; }
    private inline function set_bones(value:cpp.RawPointer<BoneInfo>):cpp.RawPointer<BoneInfo> { _bones = cast value; return value; }

    public var bindPose(get, set):cpp.RawPointer<Transform>;
    private inline function get_bindPose():cpp.RawPointer<Transform> { return cast _bindPose; }
    private inline function set_bindPose(value:cpp.RawPointer<Transform>):cpp.RawPointer<Transform> { _bindPose = cast value; return value; }

    public static inline function create(transform:RayMatrix, meshCount:Int, materialCount:Int, meshes:cpp.RawPointer<RayMesh>, materials:cpp.RawPointer<RayMaterial>, meshMaterial:cpp.RawPointer<Int>, boneCount:Int, bones:cpp.RawPointer<RayBoneInfo>, bindPose:cpp.RawPointer<RayTransform>):Model {
        var t:RayModel = untyped __cpp__("{ (Matrix){0}, (int){1}, (int){2}, (Mesh *){3}, (Material *){4}, (int *){5}, (int){6}, (BoneInfo *){7}, (Transform *){8} }", transform, meshCount, materialCount, meshes, materials, meshMaterial, boneCount, bones, bindPose);
        return cast t;
    }

    public static inline function createEmpty():Model {
        var t:RayModel = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// ModelAnimation
@:include("raylib.h")
@:native("ModelAnimation")
@:structAccess
extern private class RayModelAnimation {
    @:native("boneCount") @:dox(hide) @:noCompletion private var _boneCount:Int; // Number of bones
    @:native("frameCount") @:dox(hide) @:noCompletion private var _frameCount:Int; // Number of animation frames
    @:native("bones") @:dox(hide) @:noCompletion private var _bones:cpp.RawPointer<RayBoneInfo>; // Bones information (skeleton)
    @:native("framePoses") @:dox(hide) @:noCompletion private var _framePoses:cpp.RawPointer<cpp.RawPointer<RayTransform>>; // Poses array by frame
}

@:include("raylib.h")
@:native("cpp.Reference<ModelAnimation>")
extern private class ModelAnimationRef extends RayModelAnimation {
}

@:include("raylib.h")
@:native("cpp.Struct<ModelAnimation>")
extern class ModelAnimation extends ModelAnimationRef {
    public var boneCount(get, set):Int;
    private inline function get_boneCount():Int { return  _boneCount; }
    private inline function set_boneCount(value:Int):Int { _boneCount =  value; return value; }

    public var frameCount(get, set):Int;
    private inline function get_frameCount():Int { return  _frameCount; }
    private inline function set_frameCount(value:Int):Int { _frameCount =  value; return value; }

    public var bones(get, set):cpp.RawPointer<BoneInfo>;
    private inline function get_bones():cpp.RawPointer<BoneInfo> { return cast _bones; }
    private inline function set_bones(value:cpp.RawPointer<BoneInfo>):cpp.RawPointer<BoneInfo> { _bones = cast value; return value; }

    public var framePoses(get, set):cpp.RawPointer<cpp.RawPointer<Transform>>;
    private inline function get_framePoses():cpp.RawPointer<cpp.RawPointer<Transform>> { return cast _framePoses; }
    private inline function set_framePoses(value:cpp.RawPointer<cpp.RawPointer<Transform>>):cpp.RawPointer<cpp.RawPointer<Transform>> { _framePoses = cast value; return value; }

    public static inline function create(boneCount:Int, frameCount:Int, bones:cpp.RawPointer<RayBoneInfo>, framePoses:cpp.RawPointer<cpp.RawPointer<RayTransform>>):ModelAnimation {
        var t:RayModelAnimation = untyped __cpp__("{ (int){0}, (int){1}, (BoneInfo *){2}, (Transform **){3} }", boneCount, frameCount, bones, framePoses);
        return cast t;
    }

    public static inline function createEmpty():ModelAnimation {
        var t:RayModelAnimation = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Ray, ray for raycasting
@:include("raylib.h")
@:native("Ray")
@:structAccess
extern private class RayRay {
    @:native("position") @:dox(hide) @:noCompletion private var _position:RayVector3; // Ray position (origin)
    @:native("direction") @:dox(hide) @:noCompletion private var _direction:RayVector3; // Ray direction
}

@:include("raylib.h")
@:native("cpp.Reference<Ray>")
extern private class RayRef extends RayRay {
}

@:include("raylib.h")
@:native("cpp.Struct<Ray>")
extern class Ray extends RayRef {
    public var position(get, set):Vector3;
    private inline function get_position():Vector3 { return cast _position; }
    private inline function set_position(value:Vector3):Vector3 { _position = cast value; return value; }

    public var direction(get, set):Vector3;
    private inline function get_direction():Vector3 { return cast _direction; }
    private inline function set_direction(value:Vector3):Vector3 { _direction = cast value; return value; }

    public static inline function create(position:RayVector3, direction:RayVector3):Ray {
        var t:RayRay = untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", position, direction);
        return cast t;
    }

    public static inline function createEmpty():Ray {
        var t:RayRay = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// RayCollision, ray hit information
@:include("raylib.h")
@:native("RayCollision")
@:structAccess
extern private class RayRayCollision {
    @:native("hit") @:dox(hide) @:noCompletion private var _hit:Bool; // Did the ray hit something?
    @:native("distance") @:dox(hide) @:noCompletion private var _distance:Float; // Distance to nearest hit
    @:native("point") @:dox(hide) @:noCompletion private var _point:RayVector3; // Point of nearest hit
    @:native("normal") @:dox(hide) @:noCompletion private var _normal:RayVector3; // Surface normal of hit
}

@:include("raylib.h")
@:native("cpp.Reference<RayCollision>")
extern private class RayCollisionRef extends RayRayCollision {
}

@:include("raylib.h")
@:native("cpp.Struct<RayCollision>")
extern class RayCollision extends RayCollisionRef {
    public var hit(get, set):Bool;
    private inline function get_hit():Bool { return  _hit; }
    private inline function set_hit(value:Bool):Bool { _hit =  value; return value; }

    public var distance(get, set):Float;
    private inline function get_distance():Float { return  _distance; }
    private inline function set_distance(value:Float):Float { _distance =  value; return value; }

    public var point(get, set):Vector3;
    private inline function get_point():Vector3 { return cast _point; }
    private inline function set_point(value:Vector3):Vector3 { _point = cast value; return value; }

    public var normal(get, set):Vector3;
    private inline function get_normal():Vector3 { return cast _normal; }
    private inline function set_normal(value:Vector3):Vector3 { _normal = cast value; return value; }

    public static inline function create(hit:Bool, distance:Float, point:RayVector3, normal:RayVector3):RayCollision {
        var t:RayRayCollision = untyped __cpp__("{ (bool){0}, (float){1}, (Vector3){2}, (Vector3){3} }", hit, distance, point, normal);
        return cast t;
    }

    public static inline function createEmpty():RayCollision {
        var t:RayRayCollision = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// BoundingBox
@:include("raylib.h")
@:native("BoundingBox")
@:structAccess
extern private class RayBoundingBox {
    @:native("min") @:dox(hide) @:noCompletion private var _min:RayVector3; // Minimum vertex box-corner
    @:native("max") @:dox(hide) @:noCompletion private var _max:RayVector3; // Maximum vertex box-corner
}

@:include("raylib.h")
@:native("cpp.Reference<BoundingBox>")
extern private class BoundingBoxRef extends RayBoundingBox {
}

@:include("raylib.h")
@:native("cpp.Struct<BoundingBox>")
extern class BoundingBox extends BoundingBoxRef {
    public var min(get, set):Vector3;
    private inline function get_min():Vector3 { return cast _min; }
    private inline function set_min(value:Vector3):Vector3 { _min = cast value; return value; }

    public var max(get, set):Vector3;
    private inline function get_max():Vector3 { return cast _max; }
    private inline function set_max(value:Vector3):Vector3 { _max = cast value; return value; }

    public static inline function create(min:RayVector3, max:RayVector3):BoundingBox {
        var t:RayBoundingBox = untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", min, max);
        return cast t;
    }

    public static inline function createEmpty():BoundingBox {
        var t:RayBoundingBox = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Wave, audio wave data
@:include("raylib.h")
@:native("Wave")
@:structAccess
extern private class RayWave {
    @:native("frameCount") @:dox(hide) @:noCompletion private var _frameCount:Int; // Total number of frames (considering channels)
    @:native("sampleRate") @:dox(hide) @:noCompletion private var _sampleRate:Int; // Frequency (samples per second)
    @:native("sampleSize") @:dox(hide) @:noCompletion private var _sampleSize:Int; // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    @:native("channels") @:dox(hide) @:noCompletion private var _channels:Int; // Number of channels (1-mono, 2-stereo, ...)
    @:native("data") @:dox(hide) @:noCompletion private var _data:cpp.RawPointer<cpp.Void>; // Buffer data pointer
}

@:include("raylib.h")
@:native("cpp.Reference<Wave>")
extern private class WaveRef extends RayWave {
}

@:include("raylib.h")
@:native("cpp.Struct<Wave>")
extern class Wave extends WaveRef {
    public var frameCount(get, set):Int;
    private inline function get_frameCount():Int { return  _frameCount; }
    private inline function set_frameCount(value:Int):Int { _frameCount =  value; return value; }

    public var sampleRate(get, set):Int;
    private inline function get_sampleRate():Int { return  _sampleRate; }
    private inline function set_sampleRate(value:Int):Int { _sampleRate =  value; return value; }

    public var sampleSize(get, set):Int;
    private inline function get_sampleSize():Int { return  _sampleSize; }
    private inline function set_sampleSize(value:Int):Int { _sampleSize =  value; return value; }

    public var channels(get, set):Int;
    private inline function get_channels():Int { return  _channels; }
    private inline function set_channels(value:Int):Int { _channels =  value; return value; }

    public var data(get, set):cpp.RawPointer<cpp.Void>;
    private inline function get_data():cpp.RawPointer<cpp.Void> { return cast _data; }
    private inline function set_data(value:cpp.RawPointer<cpp.Void>):cpp.RawPointer<cpp.Void> { _data = cast value; return value; }

    public static inline function create(frameCount:Int, sampleRate:Int, sampleSize:Int, channels:Int, data:cpp.RawPointer<cpp.Void>):Wave {
        var t:RayWave = untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (unsigned int){2}, (unsigned int){3}, (void *){4} }", frameCount, sampleRate, sampleSize, channels, data);
        return cast t;
    }

    public static inline function createEmpty():Wave {
        var t:RayWave = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// AudioStream, custom audio stream
@:include("raylib.h")
@:native("AudioStream")
@:structAccess
extern private class RayAudioStream {
    @:native("buffer") @:dox(hide) @:noCompletion private var _buffer:cpp.RawPointer<RAudioBuffer>; // Pointer to internal data used by the audio system
    @:native("processor") @:dox(hide) @:noCompletion private var _processor:cpp.RawPointer<RAudioProcessor>; // Pointer to internal data processor, useful for audio effects
    @:native("sampleRate") @:dox(hide) @:noCompletion private var _sampleRate:Int; // Frequency (samples per second)
    @:native("sampleSize") @:dox(hide) @:noCompletion private var _sampleSize:Int; // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    @:native("channels") @:dox(hide) @:noCompletion private var _channels:Int; // Number of channels (1-mono, 2-stereo, ...)
}

@:include("raylib.h")
@:native("cpp.Reference<AudioStream>")
extern private class AudioStreamRef extends RayAudioStream {
}

@:include("raylib.h")
@:native("cpp.Struct<AudioStream>")
extern class AudioStream extends AudioStreamRef {
    public var buffer(get, set):cpp.RawPointer<RAudioBuffer>;
    private inline function get_buffer():cpp.RawPointer<RAudioBuffer> { return cast _buffer; }
    private inline function set_buffer(value:cpp.RawPointer<RAudioBuffer>):cpp.RawPointer<RAudioBuffer> { _buffer = cast value; return value; }

    public var processor(get, set):cpp.RawPointer<RAudioProcessor>;
    private inline function get_processor():cpp.RawPointer<RAudioProcessor> { return cast _processor; }
    private inline function set_processor(value:cpp.RawPointer<RAudioProcessor>):cpp.RawPointer<RAudioProcessor> { _processor = cast value; return value; }

    public var sampleRate(get, set):Int;
    private inline function get_sampleRate():Int { return  _sampleRate; }
    private inline function set_sampleRate(value:Int):Int { _sampleRate =  value; return value; }

    public var sampleSize(get, set):Int;
    private inline function get_sampleSize():Int { return  _sampleSize; }
    private inline function set_sampleSize(value:Int):Int { _sampleSize =  value; return value; }

    public var channels(get, set):Int;
    private inline function get_channels():Int { return  _channels; }
    private inline function set_channels(value:Int):Int { _channels =  value; return value; }

    public static inline function create(buffer:cpp.RawPointer<RAudioBuffer>, processor:cpp.RawPointer<RAudioProcessor>, sampleRate:Int, sampleSize:Int, channels:Int):AudioStream {
        var t:RayAudioStream = untyped __cpp__("{ (rAudioBuffer *){0}, (rAudioProcessor *){1}, (unsigned int){2}, (unsigned int){3}, (unsigned int){4} }", buffer, processor, sampleRate, sampleSize, channels);
        return cast t;
    }

    public static inline function createEmpty():AudioStream {
        var t:RayAudioStream = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Sound
@:include("raylib.h")
@:native("Sound")
@:structAccess
extern private class RaySound {
    @:native("stream") @:dox(hide) @:noCompletion private var _stream:RayAudioStream; // Audio stream
    @:native("frameCount") @:dox(hide) @:noCompletion private var _frameCount:Int; // Total number of frames (considering channels)
}

@:include("raylib.h")
@:native("cpp.Reference<Sound>")
extern private class SoundRef extends RaySound {
}

@:include("raylib.h")
@:native("cpp.Struct<Sound>")
extern class Sound extends SoundRef {
    public var stream(get, set):AudioStream;
    private inline function get_stream():AudioStream { return cast _stream; }
    private inline function set_stream(value:AudioStream):AudioStream { _stream = cast value; return value; }

    public var frameCount(get, set):Int;
    private inline function get_frameCount():Int { return  _frameCount; }
    private inline function set_frameCount(value:Int):Int { _frameCount =  value; return value; }

    public static inline function create(stream:RayAudioStream, frameCount:Int):Sound {
        var t:RaySound = untyped __cpp__("{ (AudioStream){0}, (unsigned int){1} }", stream, frameCount);
        return cast t;
    }

    public static inline function createEmpty():Sound {
        var t:RaySound = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// Music, audio stream, anything longer than ~10 seconds should be streamed
@:include("raylib.h")
@:native("Music")
@:structAccess
extern private class RayMusic {
    @:native("stream") @:dox(hide) @:noCompletion private var _stream:RayAudioStream; // Audio stream
    @:native("frameCount") @:dox(hide) @:noCompletion private var _frameCount:Int; // Total number of frames (considering channels)
    @:native("looping") @:dox(hide) @:noCompletion private var _looping:Bool; // Music looping enable
    @:native("ctxType") @:dox(hide) @:noCompletion private var _ctxType:Int; // Type of music context (audio filetype)
    @:native("ctxData") @:dox(hide) @:noCompletion private var _ctxData:cpp.RawPointer<cpp.Void>; // Audio context data, depends on type
}

@:include("raylib.h")
@:native("cpp.Reference<Music>")
extern private class MusicRef extends RayMusic {
}

@:include("raylib.h")
@:native("cpp.Struct<Music>")
extern class Music extends MusicRef {
    public var stream(get, set):AudioStream;
    private inline function get_stream():AudioStream { return cast _stream; }
    private inline function set_stream(value:AudioStream):AudioStream { _stream = cast value; return value; }

    public var frameCount(get, set):Int;
    private inline function get_frameCount():Int { return  _frameCount; }
    private inline function set_frameCount(value:Int):Int { _frameCount =  value; return value; }

    public var looping(get, set):Bool;
    private inline function get_looping():Bool { return  _looping; }
    private inline function set_looping(value:Bool):Bool { _looping =  value; return value; }

    public var ctxType(get, set):Int;
    private inline function get_ctxType():Int { return  _ctxType; }
    private inline function set_ctxType(value:Int):Int { _ctxType =  value; return value; }

    public var ctxData(get, set):cpp.RawPointer<cpp.Void>;
    private inline function get_ctxData():cpp.RawPointer<cpp.Void> { return cast _ctxData; }
    private inline function set_ctxData(value:cpp.RawPointer<cpp.Void>):cpp.RawPointer<cpp.Void> { _ctxData = cast value; return value; }

    public static inline function create(stream:RayAudioStream, frameCount:Int, looping:Bool, ctxType:Int, ctxData:cpp.RawPointer<cpp.Void>):Music {
        var t:RayMusic = untyped __cpp__("{ (AudioStream){0}, (unsigned int){1}, (bool){2}, (int){3}, (void *){4} }", stream, frameCount, looping, ctxType, ctxData);
        return cast t;
    }

    public static inline function createEmpty():Music {
        var t:RayMusic = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// VrDeviceInfo, Head-Mounted-Display device parameters
@:include("raylib.h")
@:native("VrDeviceInfo")
@:structAccess
extern private class RayVrDeviceInfo {
    @:native("hResolution") @:dox(hide) @:noCompletion private var _hResolution:Int; // Horizontal resolution in pixels
    @:native("vResolution") @:dox(hide) @:noCompletion private var _vResolution:Int; // Vertical resolution in pixels
    @:native("hScreenSize") @:dox(hide) @:noCompletion private var _hScreenSize:Float; // Horizontal size in meters
    @:native("vScreenSize") @:dox(hide) @:noCompletion private var _vScreenSize:Float; // Vertical size in meters
    @:native("vScreenCenter") @:dox(hide) @:noCompletion private var _vScreenCenter:Float; // Screen center in meters
    @:native("eyeToScreenDistance") @:dox(hide) @:noCompletion private var _eyeToScreenDistance:Float; // Distance between eye and display in meters
    @:native("lensSeparationDistance") @:dox(hide) @:noCompletion private var _lensSeparationDistance:Float; // Lens separation distance in meters
    @:native("interpupillaryDistance") @:dox(hide) @:noCompletion private var _interpupillaryDistance:Float; // IPD (distance between pupils) in meters
    @:native("lensDistortionValues") @:dox(hide) @:noCompletion private var _lensDistortionValues:Float; // Lens distortion constant parameters - TODO: cpp native array (original: "float lensDistortionValues[4]")
    @:native("chromaAbCorrection") @:dox(hide) @:noCompletion private var _chromaAbCorrection:Float; // Chromatic aberration correction parameters - TODO: cpp native array (original: "float chromaAbCorrection[4]")
}

@:include("raylib.h")
@:native("cpp.Reference<VrDeviceInfo>")
extern private class VrDeviceInfoRef extends RayVrDeviceInfo {
}

@:include("raylib.h")
@:native("cpp.Struct<VrDeviceInfo>")
extern class VrDeviceInfo extends VrDeviceInfoRef {
    public var hResolution(get, set):Int;
    private inline function get_hResolution():Int { return  _hResolution; }
    private inline function set_hResolution(value:Int):Int { _hResolution =  value; return value; }

    public var vResolution(get, set):Int;
    private inline function get_vResolution():Int { return  _vResolution; }
    private inline function set_vResolution(value:Int):Int { _vResolution =  value; return value; }

    public var hScreenSize(get, set):Float;
    private inline function get_hScreenSize():Float { return  _hScreenSize; }
    private inline function set_hScreenSize(value:Float):Float { _hScreenSize =  value; return value; }

    public var vScreenSize(get, set):Float;
    private inline function get_vScreenSize():Float { return  _vScreenSize; }
    private inline function set_vScreenSize(value:Float):Float { _vScreenSize =  value; return value; }

    public var vScreenCenter(get, set):Float;
    private inline function get_vScreenCenter():Float { return  _vScreenCenter; }
    private inline function set_vScreenCenter(value:Float):Float { _vScreenCenter =  value; return value; }

    public var eyeToScreenDistance(get, set):Float;
    private inline function get_eyeToScreenDistance():Float { return  _eyeToScreenDistance; }
    private inline function set_eyeToScreenDistance(value:Float):Float { _eyeToScreenDistance =  value; return value; }

    public var lensSeparationDistance(get, set):Float;
    private inline function get_lensSeparationDistance():Float { return  _lensSeparationDistance; }
    private inline function set_lensSeparationDistance(value:Float):Float { _lensSeparationDistance =  value; return value; }

    public var interpupillaryDistance(get, set):Float;
    private inline function get_interpupillaryDistance():Float { return  _interpupillaryDistance; }
    private inline function set_interpupillaryDistance(value:Float):Float { _interpupillaryDistance =  value; return value; }

    public var lensDistortionValues(get, set):Float;
    private inline function get_lensDistortionValues():Float { return  _lensDistortionValues; }
    private inline function set_lensDistortionValues(value:Float):Float { _lensDistortionValues =  value; return value; }

    public var chromaAbCorrection(get, set):Float;
    private inline function get_chromaAbCorrection():Float { return  _chromaAbCorrection; }
    private inline function set_chromaAbCorrection(value:Float):Float { _chromaAbCorrection =  value; return value; }

    public static inline function create(hResolution:Int, vResolution:Int, hScreenSize:Float, vScreenSize:Float, vScreenCenter:Float, eyeToScreenDistance:Float, lensSeparationDistance:Float, interpupillaryDistance:Float, lensDistortionValues:Float, chromaAbCorrection:Float):VrDeviceInfo {
        var t:RayVrDeviceInfo = untyped __cpp__("{ (int){0}, (int){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7}, (float){8}, (float){9} }", hResolution, vResolution, hScreenSize, vScreenSize, vScreenCenter, eyeToScreenDistance, lensSeparationDistance, interpupillaryDistance, lensDistortionValues, chromaAbCorrection);
        return cast t;
    }

    public static inline function createEmpty():VrDeviceInfo {
        var t:RayVrDeviceInfo = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

// VrStereoConfig, VR stereo rendering configuration for simulator
@:include("raylib.h")
@:native("VrStereoConfig")
@:structAccess
extern private class RayVrStereoConfig {
    @:native("projection") @:dox(hide) @:noCompletion private var _projection:RayMatrix; // VR projection matrices (per eye) - TODO: cpp native array (original: "Matrix projection[2]")
    @:native("viewOffset") @:dox(hide) @:noCompletion private var _viewOffset:RayMatrix; // VR view offset matrices (per eye) - TODO: cpp native array (original: "Matrix viewOffset[2]")
    @:native("leftLensCenter") @:dox(hide) @:noCompletion private var _leftLensCenter:Float; // VR left lens center - TODO: cpp native array (original: "float leftLensCenter[2]")
    @:native("rightLensCenter") @:dox(hide) @:noCompletion private var _rightLensCenter:Float; // VR right lens center - TODO: cpp native array (original: "float rightLensCenter[2]")
    @:native("leftScreenCenter") @:dox(hide) @:noCompletion private var _leftScreenCenter:Float; // VR left screen center - TODO: cpp native array (original: "float leftScreenCenter[2]")
    @:native("rightScreenCenter") @:dox(hide) @:noCompletion private var _rightScreenCenter:Float; // VR right screen center - TODO: cpp native array (original: "float rightScreenCenter[2]")
    @:native("scale") @:dox(hide) @:noCompletion private var _scale:Float; // VR distortion scale - TODO: cpp native array (original: "float scale[2]")
    @:native("scaleIn") @:dox(hide) @:noCompletion private var _scaleIn:Float; // VR distortion scale in - TODO: cpp native array (original: "float scaleIn[2]")
}

@:include("raylib.h")
@:native("cpp.Reference<VrStereoConfig>")
extern private class VrStereoConfigRef extends RayVrStereoConfig {
}

@:include("raylib.h")
@:native("cpp.Struct<VrStereoConfig>")
extern class VrStereoConfig extends VrStereoConfigRef {
    public var projection(get, set):Matrix;
    private inline function get_projection():Matrix { return cast _projection; }
    private inline function set_projection(value:Matrix):Matrix { _projection = cast value; return value; }

    public var viewOffset(get, set):Matrix;
    private inline function get_viewOffset():Matrix { return cast _viewOffset; }
    private inline function set_viewOffset(value:Matrix):Matrix { _viewOffset = cast value; return value; }

    public var leftLensCenter(get, set):Float;
    private inline function get_leftLensCenter():Float { return  _leftLensCenter; }
    private inline function set_leftLensCenter(value:Float):Float { _leftLensCenter =  value; return value; }

    public var rightLensCenter(get, set):Float;
    private inline function get_rightLensCenter():Float { return  _rightLensCenter; }
    private inline function set_rightLensCenter(value:Float):Float { _rightLensCenter =  value; return value; }

    public var leftScreenCenter(get, set):Float;
    private inline function get_leftScreenCenter():Float { return  _leftScreenCenter; }
    private inline function set_leftScreenCenter(value:Float):Float { _leftScreenCenter =  value; return value; }

    public var rightScreenCenter(get, set):Float;
    private inline function get_rightScreenCenter():Float { return  _rightScreenCenter; }
    private inline function set_rightScreenCenter(value:Float):Float { _rightScreenCenter =  value; return value; }

    public var scale(get, set):Float;
    private inline function get_scale():Float { return  _scale; }
    private inline function set_scale(value:Float):Float { _scale =  value; return value; }

    public var scaleIn(get, set):Float;
    private inline function get_scaleIn():Float { return  _scaleIn; }
    private inline function set_scaleIn(value:Float):Float { _scaleIn =  value; return value; }

    public static inline function create(projection:RayMatrix, viewOffset:RayMatrix, leftLensCenter:Float, rightLensCenter:Float, leftScreenCenter:Float, rightScreenCenter:Float, scale:Float, scaleIn:Float):VrStereoConfig {
        var t:RayVrStereoConfig = untyped __cpp__("{ (Matrix){0}, (Matrix){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7} }", projection, viewOffset, leftLensCenter, rightLensCenter, leftScreenCenter, rightScreenCenter, scale, scaleIn);
        return cast t;
    }

    public static inline function createEmpty():VrStereoConfig {
        var t:RayVrStereoConfig = untyped __cpp__("{ 0 }");
        return cast t;
    }
}

@:include("raylib.h")
@:native("LoadFileDataCallback")
extern class LoadFileDataCallback {
    public static inline function fromStatic<T>(inStaticFunction:T):LoadFileDataCallback {
        return untyped __cpp__("(LoadFileDataCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
    }
}

@:include("raylib.h")
@:native("SaveFileDataCallback")
extern class SaveFileDataCallback {
    public static inline function fromStatic<T>(inStaticFunction:T):SaveFileDataCallback {
        return untyped __cpp__("(SaveFileDataCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
    }
}

@:include("raylib.h")
@:native("TraceLogCallback")
extern class TraceLogCallback {
    public static inline function fromStatic<T>(inStaticFunction:T):TraceLogCallback {
        return untyped __cpp__("(TraceLogCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
    }
}

@:include("raylib.h")
@:native("LoadFileTextCallback")
extern class LoadFileTextCallback {
    public static inline function fromStatic<T>(inStaticFunction:T):LoadFileTextCallback {
        return untyped __cpp__("(LoadFileTextCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
    }
}

@:include("raylib.h")
@:native("SaveFileTextCallback")
extern class SaveFileTextCallback {
    public static inline function fromStatic<T>(inStaticFunction:T):SaveFileTextCallback {
        return untyped __cpp__("(SaveFileTextCallback) *{0}", cpp.Function.fromStaticFunction(inStaticFunction));
    }
}

// TODO: empty structs - not sure where they come from in the api - but they need to be defined
@:include("raylib.h")
@:native("AudioCallback")
extern class AudioCallback {
}

@:include("raylib.h")
@:native("Quaternion")
extern class Quaternion {
}

@:include("raylib.h")
@:native("rAudioProcessor")
extern class RAudioProcessor {
}

@:include("raylib.h")
@:native("rAudioBuffer")
extern class RAudioBuffer {
}

@:buildXml("<include name='${haxelib:raylib-haxe}/Build.xml'/>")
@:include("raylib.h")
extern class RayLib {
    @:native("InitWindow")                               private static function _InitWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void;      // Initialize window and OpenGL context
                                                         public static inline function InitWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void {  _InitWindow(width, height, cast title); }      // Initialize window and OpenGL context
    @:native("WindowShouldClose")                        private static function _WindowShouldClose():Bool;      // Check if KEY_ESCAPE pressed or Close icon pressed
                                                         public static inline function WindowShouldClose():Bool { return _WindowShouldClose(); }      // Check if KEY_ESCAPE pressed or Close icon pressed
    @:native("CloseWindow")                              private static function _CloseWindow():Void;      // Close window and unload OpenGL context
                                                         public static inline function CloseWindow():Void {  _CloseWindow(); }      // Close window and unload OpenGL context
    @:native("IsWindowReady")                            private static function _IsWindowReady():Bool;      // Check if window has been initialized successfully
                                                         public static inline function IsWindowReady():Bool { return _IsWindowReady(); }      // Check if window has been initialized successfully
    @:native("IsWindowFullscreen")                       private static function _IsWindowFullscreen():Bool;      // Check if window is currently fullscreen
                                                         public static inline function IsWindowFullscreen():Bool { return _IsWindowFullscreen(); }      // Check if window is currently fullscreen
    @:native("IsWindowHidden")                           private static function _IsWindowHidden():Bool;      // Check if window is currently hidden (only PLATFORM_DESKTOP)
                                                         public static inline function IsWindowHidden():Bool { return _IsWindowHidden(); }      // Check if window is currently hidden (only PLATFORM_DESKTOP)
    @:native("IsWindowMinimized")                        private static function _IsWindowMinimized():Bool;      // Check if window is currently minimized (only PLATFORM_DESKTOP)
                                                         public static inline function IsWindowMinimized():Bool { return _IsWindowMinimized(); }      // Check if window is currently minimized (only PLATFORM_DESKTOP)
    @:native("IsWindowMaximized")                        private static function _IsWindowMaximized():Bool;      // Check if window is currently maximized (only PLATFORM_DESKTOP)
                                                         public static inline function IsWindowMaximized():Bool { return _IsWindowMaximized(); }      // Check if window is currently maximized (only PLATFORM_DESKTOP)
    @:native("IsWindowFocused")                          private static function _IsWindowFocused():Bool;      // Check if window is currently focused (only PLATFORM_DESKTOP)
                                                         public static inline function IsWindowFocused():Bool { return _IsWindowFocused(); }      // Check if window is currently focused (only PLATFORM_DESKTOP)
    @:native("IsWindowResized")                          private static function _IsWindowResized():Bool;      // Check if window has been resized last frame
                                                         public static inline function IsWindowResized():Bool { return _IsWindowResized(); }      // Check if window has been resized last frame
    @:native("IsWindowState")                            private static function _IsWindowState(flag:Int):Bool;      // Check if one specific window flag is enabled
                                                         public static inline function IsWindowState(flag:Int):Bool { return _IsWindowState(flag); }      // Check if one specific window flag is enabled
    @:native("SetWindowState")                           private static function _SetWindowState(flags:Int):Void;      // Set window configuration state using flags (only PLATFORM_DESKTOP)
                                                         public static inline function SetWindowState(flags:Int):Void {  _SetWindowState(flags); }      // Set window configuration state using flags (only PLATFORM_DESKTOP)
    @:native("ClearWindowState")                         private static function _ClearWindowState(flags:Int):Void;      // Clear window configuration state flags
                                                         public static inline function ClearWindowState(flags:Int):Void {  _ClearWindowState(flags); }      // Clear window configuration state flags
    @:native("ToggleFullscreen")                         private static function _ToggleFullscreen():Void;      // Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
                                                         public static inline function ToggleFullscreen():Void {  _ToggleFullscreen(); }      // Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
    @:native("MaximizeWindow")                           private static function _MaximizeWindow():Void;      // Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
                                                         public static inline function MaximizeWindow():Void {  _MaximizeWindow(); }      // Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
    @:native("MinimizeWindow")                           private static function _MinimizeWindow():Void;      // Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
                                                         public static inline function MinimizeWindow():Void {  _MinimizeWindow(); }      // Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
    @:native("RestoreWindow")                            private static function _RestoreWindow():Void;      // Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
                                                         public static inline function RestoreWindow():Void {  _RestoreWindow(); }      // Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
    @:native("SetWindowIcon")                            private static function _SetWindowIcon(image:RayImage):Void;      // Set icon for window (only PLATFORM_DESKTOP)
                                                         public static inline function SetWindowIcon(image:Image):Void {  _SetWindowIcon(cast image); }      // Set icon for window (only PLATFORM_DESKTOP)
    @:native("SetWindowTitle")                           private static function _SetWindowTitle(title:cpp.ConstCharStar):Void;      // Set title for window (only PLATFORM_DESKTOP)
                                                         public static inline function SetWindowTitle(title:cpp.ConstCharStar):Void {  _SetWindowTitle(cast title); }      // Set title for window (only PLATFORM_DESKTOP)
    @:native("SetWindowPosition")                        private static function _SetWindowPosition(x:Int, y:Int):Void;      // Set window position on screen (only PLATFORM_DESKTOP)
                                                         public static inline function SetWindowPosition(x:Int, y:Int):Void {  _SetWindowPosition(x, y); }      // Set window position on screen (only PLATFORM_DESKTOP)
    @:native("SetWindowMonitor")                         private static function _SetWindowMonitor(monitor:Int):Void;      // Set monitor for the current window (fullscreen mode)
                                                         public static inline function SetWindowMonitor(monitor:Int):Void {  _SetWindowMonitor(monitor); }      // Set monitor for the current window (fullscreen mode)
    @:native("SetWindowMinSize")                         private static function _SetWindowMinSize(width:Int, height:Int):Void;      // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
                                                         public static inline function SetWindowMinSize(width:Int, height:Int):Void {  _SetWindowMinSize(width, height); }      // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
    @:native("SetWindowSize")                            private static function _SetWindowSize(width:Int, height:Int):Void;      // Set window dimensions
                                                         public static inline function SetWindowSize(width:Int, height:Int):Void {  _SetWindowSize(width, height); }      // Set window dimensions
    @:native("SetWindowOpacity")                         private static function _SetWindowOpacity(opacity:Float):Void;      // Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
                                                         public static inline function SetWindowOpacity(opacity:Float):Void {  _SetWindowOpacity(opacity); }      // Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)
    @:native("GetWindowHandle")                          private static function _GetWindowHandle():cpp.RawPointer<cpp.Void>;      // Get native window handle
                                                         public static inline function GetWindowHandle():cpp.RawPointer<cpp.Void> { return cast _GetWindowHandle(); }      // Get native window handle
    @:native("GetScreenWidth")                           private static function _GetScreenWidth():Int;      // Get current screen width
                                                         public static inline function GetScreenWidth():Int { return _GetScreenWidth(); }      // Get current screen width
    @:native("GetScreenHeight")                          private static function _GetScreenHeight():Int;      // Get current screen height
                                                         public static inline function GetScreenHeight():Int { return _GetScreenHeight(); }      // Get current screen height
    @:native("GetRenderWidth")                           private static function _GetRenderWidth():Int;      // Get current render width (it considers HiDPI)
                                                         public static inline function GetRenderWidth():Int { return _GetRenderWidth(); }      // Get current render width (it considers HiDPI)
    @:native("GetRenderHeight")                          private static function _GetRenderHeight():Int;      // Get current render height (it considers HiDPI)
                                                         public static inline function GetRenderHeight():Int { return _GetRenderHeight(); }      // Get current render height (it considers HiDPI)
    @:native("GetMonitorCount")                          private static function _GetMonitorCount():Int;      // Get number of connected monitors
                                                         public static inline function GetMonitorCount():Int { return _GetMonitorCount(); }      // Get number of connected monitors
    @:native("GetCurrentMonitor")                        private static function _GetCurrentMonitor():Int;      // Get current connected monitor
                                                         public static inline function GetCurrentMonitor():Int { return _GetCurrentMonitor(); }      // Get current connected monitor
    @:native("GetMonitorPosition")                       private static function _GetMonitorPosition(monitor:Int):RayVector2;      // Get specified monitor position
                                                         public static inline function GetMonitorPosition(monitor:Int):Vector2 { return cast _GetMonitorPosition(monitor); }      // Get specified monitor position
    @:native("GetMonitorWidth")                          private static function _GetMonitorWidth(monitor:Int):Int;      // Get specified monitor width (max available by monitor)
                                                         public static inline function GetMonitorWidth(monitor:Int):Int { return _GetMonitorWidth(monitor); }      // Get specified monitor width (max available by monitor)
    @:native("GetMonitorHeight")                         private static function _GetMonitorHeight(monitor:Int):Int;      // Get specified monitor height (max available by monitor)
                                                         public static inline function GetMonitorHeight(monitor:Int):Int { return _GetMonitorHeight(monitor); }      // Get specified monitor height (max available by monitor)
    @:native("GetMonitorPhysicalWidth")                  private static function _GetMonitorPhysicalWidth(monitor:Int):Int;      // Get specified monitor physical width in millimetres
                                                         public static inline function GetMonitorPhysicalWidth(monitor:Int):Int { return _GetMonitorPhysicalWidth(monitor); }      // Get specified monitor physical width in millimetres
    @:native("GetMonitorPhysicalHeight")                 private static function _GetMonitorPhysicalHeight(monitor:Int):Int;      // Get specified monitor physical height in millimetres
                                                         public static inline function GetMonitorPhysicalHeight(monitor:Int):Int { return _GetMonitorPhysicalHeight(monitor); }      // Get specified monitor physical height in millimetres
    @:native("GetMonitorRefreshRate")                    private static function _GetMonitorRefreshRate(monitor:Int):Int;      // Get specified monitor refresh rate
                                                         public static inline function GetMonitorRefreshRate(monitor:Int):Int { return _GetMonitorRefreshRate(monitor); }      // Get specified monitor refresh rate
    @:native("GetWindowPosition")                        private static function _GetWindowPosition():RayVector2;      // Get window position XY on monitor
                                                         public static inline function GetWindowPosition():Vector2 { return cast _GetWindowPosition(); }      // Get window position XY on monitor
    @:native("GetWindowScaleDPI")                        private static function _GetWindowScaleDPI():RayVector2;      // Get window scale DPI factor
                                                         public static inline function GetWindowScaleDPI():Vector2 { return cast _GetWindowScaleDPI(); }      // Get window scale DPI factor
    @:native("GetMonitorName")                           private static function _GetMonitorName(monitor:Int):cpp.ConstCharStar;      // Get the human-readable, UTF-8 encoded name of the primary monitor
                                                         public static inline function GetMonitorName(monitor:Int):cpp.ConstCharStar { return cast _GetMonitorName(monitor); }      // Get the human-readable, UTF-8 encoded name of the primary monitor
    @:native("SetClipboardText")                         private static function _SetClipboardText(text:cpp.ConstCharStar):Void;      // Set clipboard text content
                                                         public static inline function SetClipboardText(text:cpp.ConstCharStar):Void {  _SetClipboardText(cast text); }      // Set clipboard text content
    @:native("GetClipboardText")                         private static function _GetClipboardText():cpp.ConstCharStar;      // Get clipboard text content
                                                         public static inline function GetClipboardText():cpp.ConstCharStar { return cast _GetClipboardText(); }      // Get clipboard text content
    @:native("SwapScreenBuffer")                         private static function _SwapScreenBuffer():Void;      // Swap back buffer with front buffer (screen drawing)
                                                         public static inline function SwapScreenBuffer():Void {  _SwapScreenBuffer(); }      // Swap back buffer with front buffer (screen drawing)
    @:native("PollInputEvents")                          private static function _PollInputEvents():Void;      // Register all input events
                                                         public static inline function PollInputEvents():Void {  _PollInputEvents(); }      // Register all input events
    @:native("WaitTime")                                 private static function _WaitTime(ms:Float):Void;      // Wait for some milliseconds (halt program execution)
                                                         public static inline function WaitTime(ms:Float):Void {  _WaitTime(ms); }      // Wait for some milliseconds (halt program execution)
    @:native("ShowCursor")                               private static function _ShowCursor():Void;      // Shows cursor
                                                         public static inline function ShowCursor():Void {  _ShowCursor(); }      // Shows cursor
    @:native("HideCursor")                               private static function _HideCursor():Void;      // Hides cursor
                                                         public static inline function HideCursor():Void {  _HideCursor(); }      // Hides cursor
    @:native("IsCursorHidden")                           private static function _IsCursorHidden():Bool;      // Check if cursor is not visible
                                                         public static inline function IsCursorHidden():Bool { return _IsCursorHidden(); }      // Check if cursor is not visible
    @:native("EnableCursor")                             private static function _EnableCursor():Void;      // Enables cursor (unlock cursor)
                                                         public static inline function EnableCursor():Void {  _EnableCursor(); }      // Enables cursor (unlock cursor)
    @:native("DisableCursor")                            private static function _DisableCursor():Void;      // Disables cursor (lock cursor)
                                                         public static inline function DisableCursor():Void {  _DisableCursor(); }      // Disables cursor (lock cursor)
    @:native("IsCursorOnScreen")                         private static function _IsCursorOnScreen():Bool;      // Check if cursor is on the screen
                                                         public static inline function IsCursorOnScreen():Bool { return _IsCursorOnScreen(); }      // Check if cursor is on the screen
    @:native("ClearBackground")                          private static function _ClearBackground(color:RayColor):Void;      // Set background color (framebuffer clear color)
                                                         public static inline function ClearBackground(color:Color):Void {  _ClearBackground(cast color); }      // Set background color (framebuffer clear color)
    @:native("BeginDrawing")                             private static function _BeginDrawing():Void;      // Setup canvas (framebuffer) to start drawing
                                                         public static inline function BeginDrawing():Void {  _BeginDrawing(); }      // Setup canvas (framebuffer) to start drawing
    @:native("EndDrawing")                               private static function _EndDrawing():Void;      // End canvas drawing and swap buffers (double buffering)
                                                         public static inline function EndDrawing():Void {  _EndDrawing(); }      // End canvas drawing and swap buffers (double buffering)
    @:native("BeginMode2D")                              private static function _BeginMode2D(camera:RayCamera2D):Void;      // Begin 2D mode with custom camera (2D)
                                                         public static inline function BeginMode2D(camera:Camera2D):Void {  _BeginMode2D(cast camera); }      // Begin 2D mode with custom camera (2D)
    @:native("EndMode2D")                                private static function _EndMode2D():Void;      // Ends 2D mode with custom camera
                                                         public static inline function EndMode2D():Void {  _EndMode2D(); }      // Ends 2D mode with custom camera
    @:native("BeginMode3D")                              private static function _BeginMode3D(camera:RayCamera3D):Void;      // Begin 3D mode with custom camera (3D)
                                                         public static inline function BeginMode3D(camera:Camera3D):Void {  _BeginMode3D(cast camera); }      // Begin 3D mode with custom camera (3D)
    @:native("EndMode3D")                                private static function _EndMode3D():Void;      // Ends 3D mode and returns to default 2D orthographic mode
                                                         public static inline function EndMode3D():Void {  _EndMode3D(); }      // Ends 3D mode and returns to default 2D orthographic mode
    @:native("BeginTextureMode")                         private static function _BeginTextureMode(target:RayRenderTexture):Void;      // Begin drawing to render texture
                                                         public static inline function BeginTextureMode(target:RenderTexture2D):Void {  _BeginTextureMode(cast target); }      // Begin drawing to render texture
    @:native("EndTextureMode")                           private static function _EndTextureMode():Void;      // Ends drawing to render texture
                                                         public static inline function EndTextureMode():Void {  _EndTextureMode(); }      // Ends drawing to render texture
    @:native("BeginShaderMode")                          private static function _BeginShaderMode(shader:RayShader):Void;      // Begin custom shader drawing
                                                         public static inline function BeginShaderMode(shader:Shader):Void {  _BeginShaderMode(cast shader); }      // Begin custom shader drawing
    @:native("EndShaderMode")                            private static function _EndShaderMode():Void;      // End custom shader drawing (use default shader)
                                                         public static inline function EndShaderMode():Void {  _EndShaderMode(); }      // End custom shader drawing (use default shader)
    @:native("BeginBlendMode")                           private static function _BeginBlendMode(mode:Int):Void;      // Begin blending mode (alpha, additive, multiplied, subtract, custom)
                                                         public static inline function BeginBlendMode(mode:Int):Void {  _BeginBlendMode(mode); }      // Begin blending mode (alpha, additive, multiplied, subtract, custom)
    @:native("EndBlendMode")                             private static function _EndBlendMode():Void;      // End blending mode (reset to default: alpha blending)
                                                         public static inline function EndBlendMode():Void {  _EndBlendMode(); }      // End blending mode (reset to default: alpha blending)
    @:native("BeginScissorMode")                         private static function _BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;      // Begin scissor mode (define screen area for following drawing)
                                                         public static inline function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void {  _BeginScissorMode(x, y, width, height); }      // Begin scissor mode (define screen area for following drawing)
    @:native("EndScissorMode")                           private static function _EndScissorMode():Void;      // End scissor mode
                                                         public static inline function EndScissorMode():Void {  _EndScissorMode(); }      // End scissor mode
    @:native("BeginVrStereoMode")                        private static function _BeginVrStereoMode(config:RayVrStereoConfig):Void;      // Begin stereo rendering (requires VR simulator)
                                                         public static inline function BeginVrStereoMode(config:VrStereoConfig):Void {  _BeginVrStereoMode(cast config); }      // Begin stereo rendering (requires VR simulator)
    @:native("EndVrStereoMode")                          private static function _EndVrStereoMode():Void;      // End stereo rendering (requires VR simulator)
                                                         public static inline function EndVrStereoMode():Void {  _EndVrStereoMode(); }      // End stereo rendering (requires VR simulator)
    @:native("LoadVrStereoConfig")                       private static function _LoadVrStereoConfig(device:RayVrDeviceInfo):RayVrStereoConfig;      // Load VR stereo config for VR simulator device parameters
                                                         public static inline function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig { return cast _LoadVrStereoConfig(cast device); }      // Load VR stereo config for VR simulator device parameters
    @:native("UnloadVrStereoConfig")                     private static function _UnloadVrStereoConfig(config:RayVrStereoConfig):Void;      // Unload VR stereo config
                                                         public static inline function UnloadVrStereoConfig(config:VrStereoConfig):Void {  _UnloadVrStereoConfig(cast config); }      // Unload VR stereo config
    @:native("LoadShader")                               private static function _LoadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):RayShader;      // Load shader from files and bind default locations
                                                         public static inline function LoadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):Shader { return cast _LoadShader(cast vsFileName, cast fsFileName); }      // Load shader from files and bind default locations
    @:native("LoadShaderFromMemory")                     private static function _LoadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):RayShader;      // Load shader from code strings and bind default locations
                                                         public static inline function LoadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):Shader { return cast _LoadShaderFromMemory(cast vsCode, cast fsCode); }      // Load shader from code strings and bind default locations
    @:native("GetShaderLocation")                        private static function _GetShaderLocation(shader:RayShader, uniformName:cpp.ConstCharStar):Int;      // Get shader uniform location
                                                         public static inline function GetShaderLocation(shader:Shader, uniformName:cpp.ConstCharStar):Int { return _GetShaderLocation(cast shader, cast uniformName); }      // Get shader uniform location
    @:native("GetShaderLocationAttrib")                  private static function _GetShaderLocationAttrib(shader:RayShader, attribName:cpp.ConstCharStar):Int;      // Get shader attribute location
                                                         public static inline function GetShaderLocationAttrib(shader:Shader, attribName:cpp.ConstCharStar):Int { return _GetShaderLocationAttrib(cast shader, cast attribName); }      // Get shader attribute location
    @:native("SetShaderValue")                           private static function _SetShaderValue(shader:RayShader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void;      // Set shader uniform value
                                                         public static inline function SetShaderValue(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void {  _SetShaderValue(cast shader, locIndex, cast value, uniformType); }      // Set shader uniform value
    @:native("SetShaderValueV")                          private static function _SetShaderValueV(shader:RayShader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int, count:Int):Void;      // Set shader uniform value vector
                                                         public static inline function SetShaderValueV(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int, count:Int):Void {  _SetShaderValueV(cast shader, locIndex, cast value, uniformType, count); }      // Set shader uniform value vector
    @:native("SetShaderValueMatrix")                     private static function _SetShaderValueMatrix(shader:RayShader, locIndex:Int, mat:RayMatrix):Void;      // Set shader uniform value (matrix 4x4)
                                                         public static inline function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void {  _SetShaderValueMatrix(cast shader, locIndex, cast mat); }      // Set shader uniform value (matrix 4x4)
    @:native("SetShaderValueTexture")                    private static function _SetShaderValueTexture(shader:RayShader, locIndex:Int, texture:RayTexture):Void;      // Set shader uniform value for texture (sampler2d)
                                                         public static inline function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void {  _SetShaderValueTexture(cast shader, locIndex, cast texture); }      // Set shader uniform value for texture (sampler2d)
    @:native("UnloadShader")                             private static function _UnloadShader(shader:RayShader):Void;      // Unload shader from GPU memory (VRAM)
                                                         public static inline function UnloadShader(shader:Shader):Void {  _UnloadShader(cast shader); }      // Unload shader from GPU memory (VRAM)
    @:native("GetMouseRay")                              private static function _GetMouseRay(mousePosition:RayVector2, camera:RayCamera3D):RayRay;      // Get a ray trace from mouse position
                                                         public static inline function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray { return cast _GetMouseRay(cast mousePosition, cast camera); }      // Get a ray trace from mouse position
    @:native("GetCameraMatrix")                          private static function _GetCameraMatrix(camera:RayCamera3D):RayMatrix;      // Get camera transform matrix (view matrix)
                                                         public static inline function GetCameraMatrix(camera:Camera):Matrix { return cast _GetCameraMatrix(cast camera); }      // Get camera transform matrix (view matrix)
    @:native("GetCameraMatrix2D")                        private static function _GetCameraMatrix2D(camera:RayCamera2D):RayMatrix;      // Get camera 2d transform matrix
                                                         public static inline function GetCameraMatrix2D(camera:Camera2D):Matrix { return cast _GetCameraMatrix2D(cast camera); }      // Get camera 2d transform matrix
    @:native("GetWorldToScreen")                         private static function _GetWorldToScreen(position:RayVector3, camera:RayCamera3D):RayVector2;      // Get the screen space position for a 3d world space position
                                                         public static inline function GetWorldToScreen(position:Vector3, camera:Camera):Vector2 { return cast _GetWorldToScreen(cast position, cast camera); }      // Get the screen space position for a 3d world space position
    @:native("GetWorldToScreenEx")                       private static function _GetWorldToScreenEx(position:RayVector3, camera:RayCamera3D, width:Int, height:Int):RayVector2;      // Get size position for a 3d world space position
                                                         public static inline function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2 { return cast _GetWorldToScreenEx(cast position, cast camera, width, height); }      // Get size position for a 3d world space position
    @:native("GetWorldToScreen2D")                       private static function _GetWorldToScreen2D(position:RayVector2, camera:RayCamera2D):RayVector2;      // Get the screen space position for a 2d camera world space position
                                                         public static inline function GetWorldToScreen2D(position:Vector2, camera:Camera2D):Vector2 { return cast _GetWorldToScreen2D(cast position, cast camera); }      // Get the screen space position for a 2d camera world space position
    @:native("GetScreenToWorld2D")                       private static function _GetScreenToWorld2D(position:RayVector2, camera:RayCamera2D):RayVector2;      // Get the world space position for a 2d camera screen space position
                                                         public static inline function GetScreenToWorld2D(position:Vector2, camera:Camera2D):Vector2 { return cast _GetScreenToWorld2D(cast position, cast camera); }      // Get the world space position for a 2d camera screen space position
    @:native("SetTargetFPS")                             private static function _SetTargetFPS(fps:Int):Void;      // Set target FPS (maximum)
                                                         public static inline function SetTargetFPS(fps:Int):Void {  _SetTargetFPS(fps); }      // Set target FPS (maximum)
    @:native("GetFPS")                                   private static function _GetFPS():Int;      // Get current FPS
                                                         public static inline function GetFPS():Int { return _GetFPS(); }      // Get current FPS
    @:native("GetFrameTime")                             private static function _GetFrameTime():Float;      // Get time in seconds for last frame drawn (delta time)
                                                         public static inline function GetFrameTime():Float { return _GetFrameTime(); }      // Get time in seconds for last frame drawn (delta time)
    @:native("GetTime")                                  private static function _GetTime():Float;      // Get elapsed time in seconds since InitWindow()
                                                         public static inline function GetTime():Float { return _GetTime(); }      // Get elapsed time in seconds since InitWindow()
    @:native("GetRandomValue")                           private static function _GetRandomValue(min:Int, max:Int):Int;      // Get a random value between min and max (both included)
                                                         public static inline function GetRandomValue(min:Int, max:Int):Int { return _GetRandomValue(min, max); }      // Get a random value between min and max (both included)
    @:native("SetRandomSeed")                            private static function _SetRandomSeed(seed:Int):Void;      // Set the seed for the random number generator
                                                         public static inline function SetRandomSeed(seed:Int):Void {  _SetRandomSeed(seed); }      // Set the seed for the random number generator
    @:native("TakeScreenshot")                           private static function _TakeScreenshot(fileName:cpp.ConstCharStar):Void;      // Takes a screenshot of current screen (filename extension defines format)
                                                         public static inline function TakeScreenshot(fileName:cpp.ConstCharStar):Void {  _TakeScreenshot(cast fileName); }      // Takes a screenshot of current screen (filename extension defines format)
    @:native("SetConfigFlags")                           private static function _SetConfigFlags(flags:Int):Void;      // Setup init configuration flags (view FLAGS)
                                                         public static inline function SetConfigFlags(flags:Int):Void {  _SetConfigFlags(flags); }      // Setup init configuration flags (view FLAGS)
    @:native("TraceLog")                                 private static function _TraceLog(logLevel:Int, text:cpp.ConstCharStar, args:haxe.extern.Rest<Any>):Void;      // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
                                                         public static inline function TraceLog(logLevel:Int, text:cpp.ConstCharStar, args:haxe.extern.Rest<Any>):Void {  _TraceLog(logLevel, cast text, cast args); }      // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
    @:native("SetTraceLogLevel")                         private static function _SetTraceLogLevel(logLevel:Int):Void;      // Set the current threshold (minimum) log level
                                                         public static inline function SetTraceLogLevel(logLevel:Int):Void {  _SetTraceLogLevel(logLevel); }      // Set the current threshold (minimum) log level
    @:native("MemAlloc")                                 private static function _MemAlloc(size:Int):cpp.RawPointer<cpp.Void>;      // Internal memory allocator
                                                         public static inline function MemAlloc(size:Int):cpp.RawPointer<cpp.Void> { return cast _MemAlloc(size); }      // Internal memory allocator
    @:native("MemRealloc")                               private static function _MemRealloc(ptr:cpp.RawPointer<cpp.Void>, size:Int):cpp.RawPointer<cpp.Void>;      // Internal memory reallocator
                                                         public static inline function MemRealloc(ptr:cpp.RawPointer<cpp.Void>, size:Int):cpp.RawPointer<cpp.Void> { return cast _MemRealloc(cast ptr, size); }      // Internal memory reallocator
    @:native("MemFree")                                  private static function _MemFree(ptr:cpp.RawPointer<cpp.Void>):Void;      // Internal memory free
                                                         public static inline function MemFree(ptr:cpp.RawPointer<cpp.Void>):Void {  _MemFree(cast ptr); }      // Internal memory free
    @:native("SetTraceLogCallback")                      private static function _SetTraceLogCallback(callback:TraceLogCallback):Void;      // Set custom trace log
                                                         public static inline function SetTraceLogCallback(callback:TraceLogCallback):Void {  _SetTraceLogCallback(cast callback); }      // Set custom trace log
    @:native("SetLoadFileDataCallback")                  private static function _SetLoadFileDataCallback(callback:LoadFileDataCallback):Void;      // Set custom file binary data loader
                                                         public static inline function SetLoadFileDataCallback(callback:LoadFileDataCallback):Void {  _SetLoadFileDataCallback(cast callback); }      // Set custom file binary data loader
    @:native("SetSaveFileDataCallback")                  private static function _SetSaveFileDataCallback(callback:SaveFileDataCallback):Void;      // Set custom file binary data saver
                                                         public static inline function SetSaveFileDataCallback(callback:SaveFileDataCallback):Void {  _SetSaveFileDataCallback(cast callback); }      // Set custom file binary data saver
    @:native("SetLoadFileTextCallback")                  private static function _SetLoadFileTextCallback(callback:LoadFileTextCallback):Void;      // Set custom file text data loader
                                                         public static inline function SetLoadFileTextCallback(callback:LoadFileTextCallback):Void {  _SetLoadFileTextCallback(cast callback); }      // Set custom file text data loader
    @:native("SetSaveFileTextCallback")                  private static function _SetSaveFileTextCallback(callback:SaveFileTextCallback):Void;      // Set custom file text data saver
                                                         public static inline function SetSaveFileTextCallback(callback:SaveFileTextCallback):Void {  _SetSaveFileTextCallback(cast callback); }      // Set custom file text data saver
    @:native("LoadFileData")                             private static function _LoadFileData(fileName:cpp.ConstCharStar, bytesRead:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Load file data as byte array (read)
                                                         public static inline function LoadFileData(fileName:cpp.ConstCharStar, bytesRead:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8> { return cast _LoadFileData(cast fileName, cast bytesRead); }      // Load file data as byte array (read)
    @:native("UnloadFileData")                           private static function _UnloadFileData(data:cpp.RawPointer<cpp.UInt8>):Void;      // Unload file data allocated by LoadFileData()
                                                         public static inline function UnloadFileData(data:cpp.RawPointer<cpp.UInt8>):Void {  _UnloadFileData(cast data); }      // Unload file data allocated by LoadFileData()
    @:native("SaveFileData")                             private static function _SaveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, bytesToWrite:Int):Bool;      // Save data to file from byte array (write), returns true on success
                                                         public static inline function SaveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, bytesToWrite:Int):Bool { return _SaveFileData(cast fileName, cast data, bytesToWrite); }      // Save data to file from byte array (write), returns true on success
    @:native("LoadFileText")                             private static function _LoadFileText(fileName:cpp.ConstCharStar):cpp.RawPointer<Int>;      // Load text data from file (read), returns a '\0' terminated string
                                                         public static inline function LoadFileText(fileName:cpp.ConstCharStar):cpp.RawPointer<Int> { return cast _LoadFileText(cast fileName); }      // Load text data from file (read), returns a '\0' terminated string
    @:native("UnloadFileText")                           private static function _UnloadFileText(text:cpp.RawPointer<Int>):Void;      // Unload file text data allocated by LoadFileText()
                                                         public static inline function UnloadFileText(text:cpp.RawPointer<Int>):Void {  _UnloadFileText(cast text); }      // Unload file text data allocated by LoadFileText()
    @:native("SaveFileText")                             private static function _SaveFileText(fileName:cpp.ConstCharStar, text:cpp.RawPointer<Int>):Bool;      // Save text data to file (write), string must be '\0' terminated, returns true on success
                                                         public static inline function SaveFileText(fileName:cpp.ConstCharStar, text:cpp.RawPointer<Int>):Bool { return _SaveFileText(cast fileName, cast text); }      // Save text data to file (write), string must be '\0' terminated, returns true on success
    @:native("FileExists")                               private static function _FileExists(fileName:cpp.ConstCharStar):Bool;      // Check if file exists
                                                         public static inline function FileExists(fileName:cpp.ConstCharStar):Bool { return _FileExists(cast fileName); }      // Check if file exists
    @:native("DirectoryExists")                          private static function _DirectoryExists(dirPath:cpp.ConstCharStar):Bool;      // Check if a directory path exists
                                                         public static inline function DirectoryExists(dirPath:cpp.ConstCharStar):Bool { return _DirectoryExists(cast dirPath); }      // Check if a directory path exists
    @:native("IsFileExtension")                          private static function _IsFileExtension(fileName:cpp.ConstCharStar, ext:cpp.ConstCharStar):Bool;      // Check file extension (including point: .png, .wav)
                                                         public static inline function IsFileExtension(fileName:cpp.ConstCharStar, ext:cpp.ConstCharStar):Bool { return _IsFileExtension(cast fileName, cast ext); }      // Check file extension (including point: .png, .wav)
    @:native("GetFileLength")                            private static function _GetFileLength(fileName:cpp.ConstCharStar):Int;      // Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
                                                         public static inline function GetFileLength(fileName:cpp.ConstCharStar):Int { return _GetFileLength(cast fileName); }      // Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
    @:native("GetFileExtension")                         private static function _GetFileExtension(fileName:cpp.ConstCharStar):cpp.ConstCharStar;      // Get pointer to extension for a filename string (includes dot: '.png')
                                                         public static inline function GetFileExtension(fileName:cpp.ConstCharStar):cpp.ConstCharStar { return cast _GetFileExtension(cast fileName); }      // Get pointer to extension for a filename string (includes dot: '.png')
    @:native("GetFileName")                              private static function _GetFileName(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get pointer to filename for a path string
                                                         public static inline function GetFileName(filePath:cpp.ConstCharStar):cpp.ConstCharStar { return cast _GetFileName(cast filePath); }      // Get pointer to filename for a path string
    @:native("GetFileNameWithoutExt")                    private static function _GetFileNameWithoutExt(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get filename string without extension (uses static string)
                                                         public static inline function GetFileNameWithoutExt(filePath:cpp.ConstCharStar):cpp.ConstCharStar { return cast _GetFileNameWithoutExt(cast filePath); }      // Get filename string without extension (uses static string)
    @:native("GetDirectoryPath")                         private static function _GetDirectoryPath(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get full path for a given fileName with path (uses static string)
                                                         public static inline function GetDirectoryPath(filePath:cpp.ConstCharStar):cpp.ConstCharStar { return cast _GetDirectoryPath(cast filePath); }      // Get full path for a given fileName with path (uses static string)
    @:native("GetPrevDirectoryPath")                     private static function _GetPrevDirectoryPath(dirPath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get previous directory path for a given path (uses static string)
                                                         public static inline function GetPrevDirectoryPath(dirPath:cpp.ConstCharStar):cpp.ConstCharStar { return cast _GetPrevDirectoryPath(cast dirPath); }      // Get previous directory path for a given path (uses static string)
    @:native("GetWorkingDirectory")                      private static function _GetWorkingDirectory():cpp.ConstCharStar;      // Get current working directory (uses static string)
                                                         public static inline function GetWorkingDirectory():cpp.ConstCharStar { return cast _GetWorkingDirectory(); }      // Get current working directory (uses static string)
    @:native("GetApplicationDirectory")                  private static function _GetApplicationDirectory():cpp.ConstCharStar;      // Get the directory if the running application (uses static string)
                                                         public static inline function GetApplicationDirectory():cpp.ConstCharStar { return cast _GetApplicationDirectory(); }      // Get the directory if the running application (uses static string)
    @:native("GetDirectoryFiles")                        private static function _GetDirectoryFiles(dirPath:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Get filenames in a directory path (memory should be freed)
                                                         public static inline function GetDirectoryFiles(dirPath:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>> { return cast _GetDirectoryFiles(cast dirPath, cast count); }      // Get filenames in a directory path (memory should be freed)
    @:native("ClearDirectoryFiles")                      private static function _ClearDirectoryFiles():Void;      // Clear directory files paths buffers (free memory)
                                                         public static inline function ClearDirectoryFiles():Void {  _ClearDirectoryFiles(); }      // Clear directory files paths buffers (free memory)
    @:native("ChangeDirectory")                          private static function _ChangeDirectory(dir:cpp.ConstCharStar):Bool;      // Change working directory, return true on success
                                                         public static inline function ChangeDirectory(dir:cpp.ConstCharStar):Bool { return _ChangeDirectory(cast dir); }      // Change working directory, return true on success
    @:native("IsFileDropped")                            private static function _IsFileDropped():Bool;      // Check if a file has been dropped into window
                                                         public static inline function IsFileDropped():Bool { return _IsFileDropped(); }      // Check if a file has been dropped into window
    @:native("GetDroppedFiles")                          private static function _GetDroppedFiles(count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Get dropped files names (memory should be freed)
                                                         public static inline function GetDroppedFiles(count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>> { return cast _GetDroppedFiles(cast count); }      // Get dropped files names (memory should be freed)
    @:native("ClearDroppedFiles")                        private static function _ClearDroppedFiles():Void;      // Clear dropped files paths buffer (free memory)
                                                         public static inline function ClearDroppedFiles():Void {  _ClearDroppedFiles(); }      // Clear dropped files paths buffer (free memory)
    @:native("GetFileModTime")                           private static function _GetFileModTime(fileName:cpp.ConstCharStar):Int;      // Get file modification time (last write time)
                                                         public static inline function GetFileModTime(fileName:cpp.ConstCharStar):Int { return _GetFileModTime(cast fileName); }      // Get file modification time (last write time)
    @:native("CompressData")                             private static function _CompressData(data:cpp.RawConstPointer<cpp.UInt8>, dataLength:Int, compDataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Compress data (DEFLATE algorithm)
                                                         public static inline function CompressData(data:cpp.RawConstPointer<cpp.UInt8>, dataLength:Int, compDataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8> { return cast _CompressData(cast data, dataLength, cast compDataLength); }      // Compress data (DEFLATE algorithm)
    @:native("DecompressData")                           private static function _DecompressData(compData:cpp.RawConstPointer<cpp.UInt8>, compDataLength:Int, dataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Decompress data (DEFLATE algorithm)
                                                         public static inline function DecompressData(compData:cpp.RawConstPointer<cpp.UInt8>, compDataLength:Int, dataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8> { return cast _DecompressData(cast compData, compDataLength, cast dataLength); }      // Decompress data (DEFLATE algorithm)
    @:native("EncodeDataBase64")                         private static function _EncodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, dataLength:Int, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<Int>;      // Encode data to Base64 string
                                                         public static inline function EncodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, dataLength:Int, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<Int> { return cast _EncodeDataBase64(cast data, dataLength, cast outputLength); }      // Encode data to Base64 string
    @:native("DecodeDataBase64")                         private static function _DecodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Decode Base64 string data
                                                         public static inline function DecodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8> { return cast _DecodeDataBase64(cast data, cast outputLength); }      // Decode Base64 string data
    @:native("SaveStorageValue")                         private static function _SaveStorageValue(position:Int, value:Int):Bool;      // Save integer value to storage file (to defined position), returns true on success
                                                         public static inline function SaveStorageValue(position:Int, value:Int):Bool { return _SaveStorageValue(position, value); }      // Save integer value to storage file (to defined position), returns true on success
    @:native("LoadStorageValue")                         private static function _LoadStorageValue(position:Int):Int;      // Load integer value from storage file (from defined position)
                                                         public static inline function LoadStorageValue(position:Int):Int { return _LoadStorageValue(position); }      // Load integer value from storage file (from defined position)
    @:native("OpenURL")                                  private static function _OpenURL(url:cpp.ConstCharStar):Void;      // Open URL with default system browser (if available)
                                                         public static inline function OpenURL(url:cpp.ConstCharStar):Void {  _OpenURL(cast url); }      // Open URL with default system browser (if available)
    @:native("IsKeyPressed")                             private static function _IsKeyPressed(key:Int):Bool;      // Check if a key has been pressed once
                                                         public static inline function IsKeyPressed(key:Int):Bool { return _IsKeyPressed(key); }      // Check if a key has been pressed once
    @:native("IsKeyDown")                                private static function _IsKeyDown(key:Int):Bool;      // Check if a key is being pressed
                                                         public static inline function IsKeyDown(key:Int):Bool { return _IsKeyDown(key); }      // Check if a key is being pressed
    @:native("IsKeyReleased")                            private static function _IsKeyReleased(key:Int):Bool;      // Check if a key has been released once
                                                         public static inline function IsKeyReleased(key:Int):Bool { return _IsKeyReleased(key); }      // Check if a key has been released once
    @:native("IsKeyUp")                                  private static function _IsKeyUp(key:Int):Bool;      // Check if a key is NOT being pressed
                                                         public static inline function IsKeyUp(key:Int):Bool { return _IsKeyUp(key); }      // Check if a key is NOT being pressed
    @:native("SetExitKey")                               private static function _SetExitKey(key:Int):Void;      // Set a custom key to exit program (default is ESC)
                                                         public static inline function SetExitKey(key:Int):Void {  _SetExitKey(key); }      // Set a custom key to exit program (default is ESC)
    @:native("GetKeyPressed")                            private static function _GetKeyPressed():Int;      // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
                                                         public static inline function GetKeyPressed():Int { return _GetKeyPressed(); }      // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
    @:native("GetCharPressed")                           private static function _GetCharPressed():Int;      // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
                                                         public static inline function GetCharPressed():Int { return _GetCharPressed(); }      // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
    @:native("IsGamepadAvailable")                       private static function _IsGamepadAvailable(gamepad:Int):Bool;      // Check if a gamepad is available
                                                         public static inline function IsGamepadAvailable(gamepad:Int):Bool { return _IsGamepadAvailable(gamepad); }      // Check if a gamepad is available
    @:native("GetGamepadName")                           private static function _GetGamepadName(gamepad:Int):cpp.ConstCharStar;      // Get gamepad internal name id
                                                         public static inline function GetGamepadName(gamepad:Int):cpp.ConstCharStar { return cast _GetGamepadName(gamepad); }      // Get gamepad internal name id
    @:native("IsGamepadButtonPressed")                   private static function _IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;      // Check if a gamepad button has been pressed once
                                                         public static inline function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool { return _IsGamepadButtonPressed(gamepad, button); }      // Check if a gamepad button has been pressed once
    @:native("IsGamepadButtonDown")                      private static function _IsGamepadButtonDown(gamepad:Int, button:Int):Bool;      // Check if a gamepad button is being pressed
                                                         public static inline function IsGamepadButtonDown(gamepad:Int, button:Int):Bool { return _IsGamepadButtonDown(gamepad, button); }      // Check if a gamepad button is being pressed
    @:native("IsGamepadButtonReleased")                  private static function _IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;      // Check if a gamepad button has been released once
                                                         public static inline function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool { return _IsGamepadButtonReleased(gamepad, button); }      // Check if a gamepad button has been released once
    @:native("IsGamepadButtonUp")                        private static function _IsGamepadButtonUp(gamepad:Int, button:Int):Bool;      // Check if a gamepad button is NOT being pressed
                                                         public static inline function IsGamepadButtonUp(gamepad:Int, button:Int):Bool { return _IsGamepadButtonUp(gamepad, button); }      // Check if a gamepad button is NOT being pressed
    @:native("GetGamepadButtonPressed")                  private static function _GetGamepadButtonPressed():Int;      // Get the last gamepad button pressed
                                                         public static inline function GetGamepadButtonPressed():Int { return _GetGamepadButtonPressed(); }      // Get the last gamepad button pressed
    @:native("GetGamepadAxisCount")                      private static function _GetGamepadAxisCount(gamepad:Int):Int;      // Get gamepad axis count for a gamepad
                                                         public static inline function GetGamepadAxisCount(gamepad:Int):Int { return _GetGamepadAxisCount(gamepad); }      // Get gamepad axis count for a gamepad
    @:native("GetGamepadAxisMovement")                   private static function _GetGamepadAxisMovement(gamepad:Int, axis:Int):Float;      // Get axis movement value for a gamepad axis
                                                         public static inline function GetGamepadAxisMovement(gamepad:Int, axis:Int):Float { return _GetGamepadAxisMovement(gamepad, axis); }      // Get axis movement value for a gamepad axis
    @:native("SetGamepadMappings")                       private static function _SetGamepadMappings(mappings:cpp.ConstCharStar):Int;      // Set internal gamepad mappings (SDL_GameControllerDB)
                                                         public static inline function SetGamepadMappings(mappings:cpp.ConstCharStar):Int { return _SetGamepadMappings(cast mappings); }      // Set internal gamepad mappings (SDL_GameControllerDB)
    @:native("IsMouseButtonPressed")                     private static function _IsMouseButtonPressed(button:Int):Bool;      // Check if a mouse button has been pressed once
                                                         public static inline function IsMouseButtonPressed(button:Int):Bool { return _IsMouseButtonPressed(button); }      // Check if a mouse button has been pressed once
    @:native("IsMouseButtonDown")                        private static function _IsMouseButtonDown(button:Int):Bool;      // Check if a mouse button is being pressed
                                                         public static inline function IsMouseButtonDown(button:Int):Bool { return _IsMouseButtonDown(button); }      // Check if a mouse button is being pressed
    @:native("IsMouseButtonReleased")                    private static function _IsMouseButtonReleased(button:Int):Bool;      // Check if a mouse button has been released once
                                                         public static inline function IsMouseButtonReleased(button:Int):Bool { return _IsMouseButtonReleased(button); }      // Check if a mouse button has been released once
    @:native("IsMouseButtonUp")                          private static function _IsMouseButtonUp(button:Int):Bool;      // Check if a mouse button is NOT being pressed
                                                         public static inline function IsMouseButtonUp(button:Int):Bool { return _IsMouseButtonUp(button); }      // Check if a mouse button is NOT being pressed
    @:native("GetMouseX")                                private static function _GetMouseX():Int;      // Get mouse position X
                                                         public static inline function GetMouseX():Int { return _GetMouseX(); }      // Get mouse position X
    @:native("GetMouseY")                                private static function _GetMouseY():Int;      // Get mouse position Y
                                                         public static inline function GetMouseY():Int { return _GetMouseY(); }      // Get mouse position Y
    @:native("GetMousePosition")                         private static function _GetMousePosition():RayVector2;      // Get mouse position XY
                                                         public static inline function GetMousePosition():Vector2 { return cast _GetMousePosition(); }      // Get mouse position XY
    @:native("GetMouseDelta")                            private static function _GetMouseDelta():RayVector2;      // Get mouse delta between frames
                                                         public static inline function GetMouseDelta():Vector2 { return cast _GetMouseDelta(); }      // Get mouse delta between frames
    @:native("SetMousePosition")                         private static function _SetMousePosition(x:Int, y:Int):Void;      // Set mouse position XY
                                                         public static inline function SetMousePosition(x:Int, y:Int):Void {  _SetMousePosition(x, y); }      // Set mouse position XY
    @:native("SetMouseOffset")                           private static function _SetMouseOffset(offsetX:Int, offsetY:Int):Void;      // Set mouse offset
                                                         public static inline function SetMouseOffset(offsetX:Int, offsetY:Int):Void {  _SetMouseOffset(offsetX, offsetY); }      // Set mouse offset
    @:native("SetMouseScale")                            private static function _SetMouseScale(scaleX:Float, scaleY:Float):Void;      // Set mouse scaling
                                                         public static inline function SetMouseScale(scaleX:Float, scaleY:Float):Void {  _SetMouseScale(scaleX, scaleY); }      // Set mouse scaling
    @:native("GetMouseWheelMove")                        private static function _GetMouseWheelMove():Float;      // Get mouse wheel movement Y
                                                         public static inline function GetMouseWheelMove():Float { return _GetMouseWheelMove(); }      // Get mouse wheel movement Y
    @:native("SetMouseCursor")                           private static function _SetMouseCursor(cursor:Int):Void;      // Set mouse cursor
                                                         public static inline function SetMouseCursor(cursor:Int):Void {  _SetMouseCursor(cursor); }      // Set mouse cursor
    @:native("GetTouchX")                                private static function _GetTouchX():Int;      // Get touch position X for touch point 0 (relative to screen size)
                                                         public static inline function GetTouchX():Int { return _GetTouchX(); }      // Get touch position X for touch point 0 (relative to screen size)
    @:native("GetTouchY")                                private static function _GetTouchY():Int;      // Get touch position Y for touch point 0 (relative to screen size)
                                                         public static inline function GetTouchY():Int { return _GetTouchY(); }      // Get touch position Y for touch point 0 (relative to screen size)
    @:native("GetTouchPosition")                         private static function _GetTouchPosition(index:Int):RayVector2;      // Get touch position XY for a touch point index (relative to screen size)
                                                         public static inline function GetTouchPosition(index:Int):Vector2 { return cast _GetTouchPosition(index); }      // Get touch position XY for a touch point index (relative to screen size)
    @:native("GetTouchPointId")                          private static function _GetTouchPointId(index:Int):Int;      // Get touch point identifier for given index
                                                         public static inline function GetTouchPointId(index:Int):Int { return _GetTouchPointId(index); }      // Get touch point identifier for given index
    @:native("GetTouchPointCount")                       private static function _GetTouchPointCount():Int;      // Get number of touch points
                                                         public static inline function GetTouchPointCount():Int { return _GetTouchPointCount(); }      // Get number of touch points
    @:native("SetGesturesEnabled")                       private static function _SetGesturesEnabled(flags:Int):Void;      // Enable a set of gestures using flags
                                                         public static inline function SetGesturesEnabled(flags:Int):Void {  _SetGesturesEnabled(flags); }      // Enable a set of gestures using flags
    @:native("IsGestureDetected")                        private static function _IsGestureDetected(gesture:Int):Bool;      // Check if a gesture have been detected
                                                         public static inline function IsGestureDetected(gesture:Int):Bool { return _IsGestureDetected(gesture); }      // Check if a gesture have been detected
    @:native("GetGestureDetected")                       private static function _GetGestureDetected():Int;      // Get latest detected gesture
                                                         public static inline function GetGestureDetected():Int { return _GetGestureDetected(); }      // Get latest detected gesture
    @:native("GetGestureHoldDuration")                   private static function _GetGestureHoldDuration():Float;      // Get gesture hold time in milliseconds
                                                         public static inline function GetGestureHoldDuration():Float { return _GetGestureHoldDuration(); }      // Get gesture hold time in milliseconds
    @:native("GetGestureDragVector")                     private static function _GetGestureDragVector():RayVector2;      // Get gesture drag vector
                                                         public static inline function GetGestureDragVector():Vector2 { return cast _GetGestureDragVector(); }      // Get gesture drag vector
    @:native("GetGestureDragAngle")                      private static function _GetGestureDragAngle():Float;      // Get gesture drag angle
                                                         public static inline function GetGestureDragAngle():Float { return _GetGestureDragAngle(); }      // Get gesture drag angle
    @:native("GetGesturePinchVector")                    private static function _GetGesturePinchVector():RayVector2;      // Get gesture pinch delta
                                                         public static inline function GetGesturePinchVector():Vector2 { return cast _GetGesturePinchVector(); }      // Get gesture pinch delta
    @:native("GetGesturePinchAngle")                     private static function _GetGesturePinchAngle():Float;      // Get gesture pinch angle
                                                         public static inline function GetGesturePinchAngle():Float { return _GetGesturePinchAngle(); }      // Get gesture pinch angle
    @:native("SetCameraMode")                            private static function _SetCameraMode(camera:RayCamera3D, mode:Int):Void;      // Set camera mode (multiple camera modes available)
                                                         public static inline function SetCameraMode(camera:Camera, mode:Int):Void {  _SetCameraMode(cast camera, mode); }      // Set camera mode (multiple camera modes available)
    @:native("UpdateCamera")                             private static function _UpdateCamera(camera:cpp.RawPointer<RayCamera3D>):Void;      // Update camera position for selected mode
                                                         public static inline function UpdateCamera(camera:cpp.RawPointer<Camera>):Void {  _UpdateCamera(cast camera); }      // Update camera position for selected mode
    @:native("SetCameraPanControl")                      private static function _SetCameraPanControl(keyPan:Int):Void;      // Set camera pan key to combine with mouse movement (free camera)
                                                         public static inline function SetCameraPanControl(keyPan:Int):Void {  _SetCameraPanControl(keyPan); }      // Set camera pan key to combine with mouse movement (free camera)
    @:native("SetCameraAltControl")                      private static function _SetCameraAltControl(keyAlt:Int):Void;      // Set camera alt key to combine with mouse movement (free camera)
                                                         public static inline function SetCameraAltControl(keyAlt:Int):Void {  _SetCameraAltControl(keyAlt); }      // Set camera alt key to combine with mouse movement (free camera)
    @:native("SetCameraSmoothZoomControl")               private static function _SetCameraSmoothZoomControl(keySmoothZoom:Int):Void;      // Set camera smooth zoom key to combine with mouse (free camera)
                                                         public static inline function SetCameraSmoothZoomControl(keySmoothZoom:Int):Void {  _SetCameraSmoothZoomControl(keySmoothZoom); }      // Set camera smooth zoom key to combine with mouse (free camera)
    @:native("SetCameraMoveControls")                    private static function _SetCameraMoveControls(keyFront:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;      // Set camera move controls (1st person and 3rd person cameras)
                                                         public static inline function SetCameraMoveControls(keyFront:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void {  _SetCameraMoveControls(keyFront, keyBack, keyRight, keyLeft, keyUp, keyDown); }      // Set camera move controls (1st person and 3rd person cameras)
    @:native("SetShapesTexture")                         private static function _SetShapesTexture(texture:RayTexture, source:RayRectangle):Void;      // Set texture and rectangle to be used on shapes drawing
                                                         public static inline function SetShapesTexture(texture:Texture2D, source:Rectangle):Void {  _SetShapesTexture(cast texture, cast source); }      // Set texture and rectangle to be used on shapes drawing
    @:native("DrawPixel")                                private static function _DrawPixel(posX:Int, posY:Int, color:RayColor):Void;      // Draw a pixel
                                                         public static inline function DrawPixel(posX:Int, posY:Int, color:Color):Void {  _DrawPixel(posX, posY, cast color); }      // Draw a pixel
    @:native("DrawPixelV")                               private static function _DrawPixelV(position:RayVector2, color:RayColor):Void;      // Draw a pixel (Vector version)
                                                         public static inline function DrawPixelV(position:Vector2, color:Color):Void {  _DrawPixelV(cast position, cast color); }      // Draw a pixel (Vector version)
    @:native("DrawLine")                                 private static function _DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:RayColor):Void;      // Draw a line
                                                         public static inline function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void {  _DrawLine(startPosX, startPosY, endPosX, endPosY, cast color); }      // Draw a line
    @:native("DrawLineV")                                private static function _DrawLineV(startPos:RayVector2, endPos:RayVector2, color:RayColor):Void;      // Draw a line (Vector version)
                                                         public static inline function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void {  _DrawLineV(cast startPos, cast endPos, cast color); }      // Draw a line (Vector version)
    @:native("DrawLineEx")                               private static function _DrawLineEx(startPos:RayVector2, endPos:RayVector2, thick:Float, color:RayColor):Void;      // Draw a line defining thickness
                                                         public static inline function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void {  _DrawLineEx(cast startPos, cast endPos, thick, cast color); }      // Draw a line defining thickness
    @:native("DrawLineBezier")                           private static function _DrawLineBezier(startPos:RayVector2, endPos:RayVector2, thick:Float, color:RayColor):Void;      // Draw a line using cubic-bezier curves in-out
                                                         public static inline function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void {  _DrawLineBezier(cast startPos, cast endPos, thick, cast color); }      // Draw a line using cubic-bezier curves in-out
    @:native("DrawLineBezierQuad")                       private static function _DrawLineBezierQuad(startPos:RayVector2, endPos:RayVector2, controlPos:RayVector2, thick:Float, color:RayColor):Void;      // Draw line using quadratic bezier curves with a control point
                                                         public static inline function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void {  _DrawLineBezierQuad(cast startPos, cast endPos, cast controlPos, thick, cast color); }      // Draw line using quadratic bezier curves with a control point
    @:native("DrawLineBezierCubic")                      private static function _DrawLineBezierCubic(startPos:RayVector2, endPos:RayVector2, startControlPos:RayVector2, endControlPos:RayVector2, thick:Float, color:RayColor):Void;      // Draw line using cubic bezier curves with 2 control points
                                                         public static inline function DrawLineBezierCubic(startPos:Vector2, endPos:Vector2, startControlPos:Vector2, endControlPos:Vector2, thick:Float, color:Color):Void {  _DrawLineBezierCubic(cast startPos, cast endPos, cast startControlPos, cast endControlPos, thick, cast color); }      // Draw line using cubic bezier curves with 2 control points
    @:native("DrawLineStrip")                            private static function _DrawLineStrip(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;      // Draw lines sequence
                                                         public static inline function DrawLineStrip(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void {  _DrawLineStrip(cast points, pointCount, cast color); }      // Draw lines sequence
    @:native("DrawCircle")                               private static function _DrawCircle(centerX:Int, centerY:Int, radius:Float, color:RayColor):Void;      // Draw a color-filled circle
                                                         public static inline function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void {  _DrawCircle(centerX, centerY, radius, cast color); }      // Draw a color-filled circle
    @:native("DrawCircleSector")                         private static function _DrawCircleSector(center:RayVector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:RayColor):Void;      // Draw a piece of a circle
                                                         public static inline function DrawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void {  _DrawCircleSector(cast center, radius, startAngle, endAngle, segments, cast color); }      // Draw a piece of a circle
    @:native("DrawCircleSectorLines")                    private static function _DrawCircleSectorLines(center:RayVector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:RayColor):Void;      // Draw circle sector outline
                                                         public static inline function DrawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void {  _DrawCircleSectorLines(cast center, radius, startAngle, endAngle, segments, cast color); }      // Draw circle sector outline
    @:native("DrawCircleGradient")                       private static function _DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:RayColor, color2:RayColor):Void;      // Draw a gradient-filled circle
                                                         public static inline function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void {  _DrawCircleGradient(centerX, centerY, radius, cast color1, cast color2); }      // Draw a gradient-filled circle
    @:native("DrawCircleV")                              private static function _DrawCircleV(center:RayVector2, radius:Float, color:RayColor):Void;      // Draw a color-filled circle (Vector version)
                                                         public static inline function DrawCircleV(center:Vector2, radius:Float, color:Color):Void {  _DrawCircleV(cast center, radius, cast color); }      // Draw a color-filled circle (Vector version)
    @:native("DrawCircleLines")                          private static function _DrawCircleLines(centerX:Int, centerY:Int, radius:Float, color:RayColor):Void;      // Draw circle outline
                                                         public static inline function DrawCircleLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void {  _DrawCircleLines(centerX, centerY, radius, cast color); }      // Draw circle outline
    @:native("DrawEllipse")                              private static function _DrawEllipse(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:RayColor):Void;      // Draw ellipse
                                                         public static inline function DrawEllipse(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void {  _DrawEllipse(centerX, centerY, radiusH, radiusV, cast color); }      // Draw ellipse
    @:native("DrawEllipseLines")                         private static function _DrawEllipseLines(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:RayColor):Void;      // Draw ellipse outline
                                                         public static inline function DrawEllipseLines(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void {  _DrawEllipseLines(centerX, centerY, radiusH, radiusV, cast color); }      // Draw ellipse outline
    @:native("DrawRing")                                 private static function _DrawRing(center:RayVector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:RayColor):Void;      // Draw ring
                                                         public static inline function DrawRing(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void {  _DrawRing(cast center, innerRadius, outerRadius, startAngle, endAngle, segments, cast color); }      // Draw ring
    @:native("DrawRingLines")                            private static function _DrawRingLines(center:RayVector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:RayColor):Void;      // Draw ring outline
                                                         public static inline function DrawRingLines(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void {  _DrawRingLines(cast center, innerRadius, outerRadius, startAngle, endAngle, segments, cast color); }      // Draw ring outline
    @:native("DrawRectangle")                            private static function _DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;      // Draw a color-filled rectangle
                                                         public static inline function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void {  _DrawRectangle(posX, posY, width, height, cast color); }      // Draw a color-filled rectangle
    @:native("DrawRectangleV")                           private static function _DrawRectangleV(position:RayVector2, size:RayVector2, color:RayColor):Void;      // Draw a color-filled rectangle (Vector version)
                                                         public static inline function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void {  _DrawRectangleV(cast position, cast size, cast color); }      // Draw a color-filled rectangle (Vector version)
    @:native("DrawRectangleRec")                         private static function _DrawRectangleRec(rec:RayRectangle, color:RayColor):Void;      // Draw a color-filled rectangle
                                                         public static inline function DrawRectangleRec(rec:Rectangle, color:Color):Void {  _DrawRectangleRec(cast rec, cast color); }      // Draw a color-filled rectangle
    @:native("DrawRectanglePro")                         private static function _DrawRectanglePro(rec:RayRectangle, origin:RayVector2, rotation:Float, color:RayColor):Void;      // Draw a color-filled rectangle with pro parameters
                                                         public static inline function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void {  _DrawRectanglePro(cast rec, cast origin, rotation, cast color); }      // Draw a color-filled rectangle with pro parameters
    @:native("DrawRectangleGradientV")                   private static function _DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor, color2:RayColor):Void;      // Draw a vertical-gradient-filled rectangle
                                                         public static inline function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void {  _DrawRectangleGradientV(posX, posY, width, height, cast color1, cast color2); }      // Draw a vertical-gradient-filled rectangle
    @:native("DrawRectangleGradientH")                   private static function _DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:RayColor, color2:RayColor):Void;      // Draw a horizontal-gradient-filled rectangle
                                                         public static inline function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void {  _DrawRectangleGradientH(posX, posY, width, height, cast color1, cast color2); }      // Draw a horizontal-gradient-filled rectangle
    @:native("DrawRectangleGradientEx")                  private static function _DrawRectangleGradientEx(rec:RayRectangle, col1:RayColor, col2:RayColor, col3:RayColor, col4:RayColor):Void;      // Draw a gradient-filled rectangle with custom vertex colors
                                                         public static inline function DrawRectangleGradientEx(rec:Rectangle, col1:Color, col2:Color, col3:Color, col4:Color):Void {  _DrawRectangleGradientEx(cast rec, cast col1, cast col2, cast col3, cast col4); }      // Draw a gradient-filled rectangle with custom vertex colors
    @:native("DrawRectangleLines")                       private static function _DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;      // Draw rectangle outline
                                                         public static inline function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void {  _DrawRectangleLines(posX, posY, width, height, cast color); }      // Draw rectangle outline
    @:native("DrawRectangleLinesEx")                     private static function _DrawRectangleLinesEx(rec:RayRectangle, lineThick:Float, color:RayColor):Void;      // Draw rectangle outline with extended parameters
                                                         public static inline function DrawRectangleLinesEx(rec:Rectangle, lineThick:Float, color:Color):Void {  _DrawRectangleLinesEx(cast rec, lineThick, cast color); }      // Draw rectangle outline with extended parameters
    @:native("DrawRectangleRounded")                     private static function _DrawRectangleRounded(rec:RayRectangle, roundness:Float, segments:Int, color:RayColor):Void;      // Draw rectangle with rounded edges
                                                         public static inline function DrawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void {  _DrawRectangleRounded(cast rec, roundness, segments, cast color); }      // Draw rectangle with rounded edges
    @:native("DrawRectangleRoundedLines")                private static function _DrawRectangleRoundedLines(rec:RayRectangle, roundness:Float, segments:Int, lineThick:Float, color:RayColor):Void;      // Draw rectangle with rounded edges outline
                                                         public static inline function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Float, color:Color):Void {  _DrawRectangleRoundedLines(cast rec, roundness, segments, lineThick, cast color); }      // Draw rectangle with rounded edges outline
    @:native("DrawTriangle")                             private static function _DrawTriangle(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;      // Draw a color-filled triangle (vertex in counter-clockwise order!)
                                                         public static inline function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void {  _DrawTriangle(cast v1, cast v2, cast v3, cast color); }      // Draw a color-filled triangle (vertex in counter-clockwise order!)
    @:native("DrawTriangleLines")                        private static function _DrawTriangleLines(v1:RayVector2, v2:RayVector2, v3:RayVector2, color:RayColor):Void;      // Draw triangle outline (vertex in counter-clockwise order!)
                                                         public static inline function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void {  _DrawTriangleLines(cast v1, cast v2, cast v3, cast color); }      // Draw triangle outline (vertex in counter-clockwise order!)
    @:native("DrawTriangleFan")                          private static function _DrawTriangleFan(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;      // Draw a triangle fan defined by points (first vertex is the center)
                                                         public static inline function DrawTriangleFan(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void {  _DrawTriangleFan(cast points, pointCount, cast color); }      // Draw a triangle fan defined by points (first vertex is the center)
    @:native("DrawTriangleStrip")                        private static function _DrawTriangleStrip(points:cpp.RawPointer<RayVector2>, pointCount:Int, color:RayColor):Void;      // Draw a triangle strip defined by points
                                                         public static inline function DrawTriangleStrip(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void {  _DrawTriangleStrip(cast points, pointCount, cast color); }      // Draw a triangle strip defined by points
    @:native("DrawPoly")                                 private static function _DrawPoly(center:RayVector2, sides:Int, radius:Float, rotation:Float, color:RayColor):Void;      // Draw a regular polygon (Vector version)
                                                         public static inline function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void {  _DrawPoly(cast center, sides, radius, rotation, cast color); }      // Draw a regular polygon (Vector version)
    @:native("DrawPolyLines")                            private static function _DrawPolyLines(center:RayVector2, sides:Int, radius:Float, rotation:Float, color:RayColor):Void;      // Draw a polygon outline of n sides
                                                         public static inline function DrawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void {  _DrawPolyLines(cast center, sides, radius, rotation, cast color); }      // Draw a polygon outline of n sides
    @:native("DrawPolyLinesEx")                          private static function _DrawPolyLinesEx(center:RayVector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:RayColor):Void;      // Draw a polygon outline of n sides with extended parameters
                                                         public static inline function DrawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void {  _DrawPolyLinesEx(cast center, sides, radius, rotation, lineThick, cast color); }      // Draw a polygon outline of n sides with extended parameters
    @:native("CheckCollisionRecs")                       private static function _CheckCollisionRecs(rec1:RayRectangle, rec2:RayRectangle):Bool;      // Check collision between two rectangles
                                                         public static inline function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool { return _CheckCollisionRecs(cast rec1, cast rec2); }      // Check collision between two rectangles
    @:native("CheckCollisionCircles")                    private static function _CheckCollisionCircles(center1:RayVector2, radius1:Float, center2:RayVector2, radius2:Float):Bool;      // Check collision between two circles
                                                         public static inline function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool { return _CheckCollisionCircles(cast center1, radius1, cast center2, radius2); }      // Check collision between two circles
    @:native("CheckCollisionCircleRec")                  private static function _CheckCollisionCircleRec(center:RayVector2, radius:Float, rec:RayRectangle):Bool;      // Check collision between circle and rectangle
                                                         public static inline function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool { return _CheckCollisionCircleRec(cast center, radius, cast rec); }      // Check collision between circle and rectangle
    @:native("CheckCollisionPointRec")                   private static function _CheckCollisionPointRec(point:RayVector2, rec:RayRectangle):Bool;      // Check if point is inside rectangle
                                                         public static inline function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool { return _CheckCollisionPointRec(cast point, cast rec); }      // Check if point is inside rectangle
    @:native("CheckCollisionPointCircle")                private static function _CheckCollisionPointCircle(point:RayVector2, center:RayVector2, radius:Float):Bool;      // Check if point is inside circle
                                                         public static inline function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool { return _CheckCollisionPointCircle(cast point, cast center, radius); }      // Check if point is inside circle
    @:native("CheckCollisionPointTriangle")              private static function _CheckCollisionPointTriangle(point:RayVector2, p1:RayVector2, p2:RayVector2, p3:RayVector2):Bool;      // Check if point is inside a triangle
                                                         public static inline function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool { return _CheckCollisionPointTriangle(cast point, cast p1, cast p2, cast p3); }      // Check if point is inside a triangle
    @:native("CheckCollisionLines")                      private static function _CheckCollisionLines(startPos1:RayVector2, endPos1:RayVector2, startPos2:RayVector2, endPos2:RayVector2, collisionPoint:cpp.RawPointer<RayVector2>):Bool;      // Check the collision between two lines defined by two points each, returns collision point by reference
                                                         public static inline function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2, collisionPoint:cpp.RawPointer<Vector2>):Bool { return _CheckCollisionLines(cast startPos1, cast endPos1, cast startPos2, cast endPos2, cast collisionPoint); }      // Check the collision between two lines defined by two points each, returns collision point by reference
    @:native("CheckCollisionPointLine")                  private static function _CheckCollisionPointLine(point:RayVector2, p1:RayVector2, p2:RayVector2, threshold:Int):Bool;      // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
                                                         public static inline function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool { return _CheckCollisionPointLine(cast point, cast p1, cast p2, threshold); }      // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
    @:native("GetCollisionRec")                          private static function _GetCollisionRec(rec1:RayRectangle, rec2:RayRectangle):RayRectangle;      // Get collision rectangle for two rectangles collision
                                                         public static inline function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle { return cast _GetCollisionRec(cast rec1, cast rec2); }      // Get collision rectangle for two rectangles collision
    @:native("LoadImage")                                private static function _LoadImage(fileName:cpp.ConstCharStar):RayImage;      // Load image from file into CPU memory (RAM)
                                                         public static inline function LoadImage(fileName:cpp.ConstCharStar):Image { return cast _LoadImage(cast fileName); }      // Load image from file into CPU memory (RAM)
    @:native("LoadImageRaw")                             private static function _LoadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):RayImage;      // Load image from RAW file data
                                                         public static inline function LoadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image { return cast _LoadImageRaw(cast fileName, width, height, format, headerSize); }      // Load image from RAW file data
    @:native("LoadImageAnim")                            private static function _LoadImageAnim(fileName:cpp.ConstCharStar, frames:cpp.RawPointer<Int>):RayImage;      // Load image sequence from file (frames appended to image.data)
                                                         public static inline function LoadImageAnim(fileName:cpp.ConstCharStar, frames:cpp.RawPointer<Int>):Image { return cast _LoadImageAnim(cast fileName, cast frames); }      // Load image sequence from file (frames appended to image.data)
    @:native("LoadImageFromMemory")                      private static function _LoadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):RayImage;      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
                                                         public static inline function LoadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Image { return cast _LoadImageFromMemory(cast fileType, cast fileData, dataSize); }      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
    @:native("LoadImageFromTexture")                     private static function _LoadImageFromTexture(texture:RayTexture):RayImage;      // Load image from GPU texture data
                                                         public static inline function LoadImageFromTexture(texture:Texture2D):Image { return cast _LoadImageFromTexture(cast texture); }      // Load image from GPU texture data
    @:native("LoadImageFromScreen")                      private static function _LoadImageFromScreen():RayImage;      // Load image from screen buffer and (screenshot)
                                                         public static inline function LoadImageFromScreen():Image { return cast _LoadImageFromScreen(); }      // Load image from screen buffer and (screenshot)
    @:native("UnloadImage")                              private static function _UnloadImage(image:RayImage):Void;      // Unload image from CPU memory (RAM)
                                                         public static inline function UnloadImage(image:Image):Void {  _UnloadImage(cast image); }      // Unload image from CPU memory (RAM)
    @:native("ExportImage")                              private static function _ExportImage(image:RayImage, fileName:cpp.ConstCharStar):Bool;      // Export image data to file, returns true on success
                                                         public static inline function ExportImage(image:Image, fileName:cpp.ConstCharStar):Bool { return _ExportImage(cast image, cast fileName); }      // Export image data to file, returns true on success
    @:native("ExportImageAsCode")                        private static function _ExportImageAsCode(image:RayImage, fileName:cpp.ConstCharStar):Bool;      // Export image as code file defining an array of bytes, returns true on success
                                                         public static inline function ExportImageAsCode(image:Image, fileName:cpp.ConstCharStar):Bool { return _ExportImageAsCode(cast image, cast fileName); }      // Export image as code file defining an array of bytes, returns true on success
    @:native("GenImageColor")                            private static function _GenImageColor(width:Int, height:Int, color:RayColor):RayImage;      // Generate image: plain color
                                                         public static inline function GenImageColor(width:Int, height:Int, color:Color):Image { return cast _GenImageColor(width, height, cast color); }      // Generate image: plain color
    @:native("GenImageGradientV")                        private static function _GenImageGradientV(width:Int, height:Int, top:RayColor, bottom:RayColor):RayImage;      // Generate image: vertical gradient
                                                         public static inline function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image { return cast _GenImageGradientV(width, height, cast top, cast bottom); }      // Generate image: vertical gradient
    @:native("GenImageGradientH")                        private static function _GenImageGradientH(width:Int, height:Int, left:RayColor, right:RayColor):RayImage;      // Generate image: horizontal gradient
                                                         public static inline function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image { return cast _GenImageGradientH(width, height, cast left, cast right); }      // Generate image: horizontal gradient
    @:native("GenImageGradientRadial")                   private static function _GenImageGradientRadial(width:Int, height:Int, density:Float, inner:RayColor, outer:RayColor):RayImage;      // Generate image: radial gradient
                                                         public static inline function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image { return cast _GenImageGradientRadial(width, height, density, cast inner, cast outer); }      // Generate image: radial gradient
    @:native("GenImageChecked")                          private static function _GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:RayColor, col2:RayColor):RayImage;      // Generate image: checked
                                                         public static inline function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image { return cast _GenImageChecked(width, height, checksX, checksY, cast col1, cast col2); }      // Generate image: checked
    @:native("GenImageWhiteNoise")                       private static function _GenImageWhiteNoise(width:Int, height:Int, factor:Float):RayImage;      // Generate image: white noise
                                                         public static inline function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image { return cast _GenImageWhiteNoise(width, height, factor); }      // Generate image: white noise
    @:native("GenImageCellular")                         private static function _GenImageCellular(width:Int, height:Int, tileSize:Int):RayImage;      // Generate image: cellular algorithm, bigger tileSize means bigger cells
                                                         public static inline function GenImageCellular(width:Int, height:Int, tileSize:Int):Image { return cast _GenImageCellular(width, height, tileSize); }      // Generate image: cellular algorithm, bigger tileSize means bigger cells
    @:native("ImageCopy")                                private static function _ImageCopy(image:RayImage):RayImage;      // Create an image duplicate (useful for transformations)
                                                         public static inline function ImageCopy(image:Image):Image { return cast _ImageCopy(cast image); }      // Create an image duplicate (useful for transformations)
    @:native("ImageFromImage")                           private static function _ImageFromImage(image:RayImage, rec:RayRectangle):RayImage;      // Create an image from another image piece
                                                         public static inline function ImageFromImage(image:Image, rec:Rectangle):Image { return cast _ImageFromImage(cast image, cast rec); }      // Create an image from another image piece
    @:native("ImageText")                                private static function _ImageText(text:cpp.ConstCharStar, fontSize:Int, color:RayColor):RayImage;      // Create an image from text (default font)
                                                         public static inline function ImageText(text:cpp.ConstCharStar, fontSize:Int, color:Color):Image { return cast _ImageText(cast text, fontSize, cast color); }      // Create an image from text (default font)
    @:native("ImageTextEx")                              private static function _ImageTextEx(font:RayFont, text:cpp.ConstCharStar, fontSize:Float, spacing:Float, tint:RayColor):RayImage;      // Create an image from text (custom sprite font)
                                                         public static inline function ImageTextEx(font:Font, text:cpp.ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image { return cast _ImageTextEx(cast font, cast text, fontSize, spacing, cast tint); }      // Create an image from text (custom sprite font)
    @:native("ImageFormat")                              private static function _ImageFormat(image:cpp.RawPointer<RayImage>, newFormat:Int):Void;      // Convert image data to desired format
                                                         public static inline function ImageFormat(image:cpp.RawPointer<Image>, newFormat:Int):Void {  _ImageFormat(cast image, newFormat); }      // Convert image data to desired format
    @:native("ImageToPOT")                               private static function _ImageToPOT(image:cpp.RawPointer<RayImage>, fill:RayColor):Void;      // Convert image to POT (power-of-two)
                                                         public static inline function ImageToPOT(image:cpp.RawPointer<Image>, fill:Color):Void {  _ImageToPOT(cast image, cast fill); }      // Convert image to POT (power-of-two)
    @:native("ImageCrop")                                private static function _ImageCrop(image:cpp.RawPointer<RayImage>, crop:RayRectangle):Void;      // Crop an image to a defined rectangle
                                                         public static inline function ImageCrop(image:cpp.RawPointer<Image>, crop:Rectangle):Void {  _ImageCrop(cast image, cast crop); }      // Crop an image to a defined rectangle
    @:native("ImageAlphaCrop")                           private static function _ImageAlphaCrop(image:cpp.RawPointer<RayImage>, threshold:Float):Void;      // Crop image depending on alpha value
                                                         public static inline function ImageAlphaCrop(image:cpp.RawPointer<Image>, threshold:Float):Void {  _ImageAlphaCrop(cast image, threshold); }      // Crop image depending on alpha value
    @:native("ImageAlphaClear")                          private static function _ImageAlphaClear(image:cpp.RawPointer<RayImage>, color:RayColor, threshold:Float):Void;      // Clear alpha channel to desired color
                                                         public static inline function ImageAlphaClear(image:cpp.RawPointer<Image>, color:Color, threshold:Float):Void {  _ImageAlphaClear(cast image, cast color, threshold); }      // Clear alpha channel to desired color
    @:native("ImageAlphaMask")                           private static function _ImageAlphaMask(image:cpp.RawPointer<RayImage>, alphaMask:RayImage):Void;      // Apply alpha mask to image
                                                         public static inline function ImageAlphaMask(image:cpp.RawPointer<Image>, alphaMask:Image):Void {  _ImageAlphaMask(cast image, cast alphaMask); }      // Apply alpha mask to image
    @:native("ImageAlphaPremultiply")                    private static function _ImageAlphaPremultiply(image:cpp.RawPointer<RayImage>):Void;      // Premultiply alpha channel
                                                         public static inline function ImageAlphaPremultiply(image:cpp.RawPointer<Image>):Void {  _ImageAlphaPremultiply(cast image); }      // Premultiply alpha channel
    @:native("ImageResize")                              private static function _ImageResize(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;      // Resize image (Bicubic scaling algorithm)
                                                         public static inline function ImageResize(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int):Void {  _ImageResize(cast image, newWidth, newHeight); }      // Resize image (Bicubic scaling algorithm)
    @:native("ImageResizeNN")                            private static function _ImageResizeNN(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int):Void;      // Resize image (Nearest-Neighbor scaling algorithm)
                                                         public static inline function ImageResizeNN(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int):Void {  _ImageResizeNN(cast image, newWidth, newHeight); }      // Resize image (Nearest-Neighbor scaling algorithm)
    @:native("ImageResizeCanvas")                        private static function _ImageResizeCanvas(image:cpp.RawPointer<RayImage>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:RayColor):Void;      // Resize canvas and fill with color
                                                         public static inline function ImageResizeCanvas(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void {  _ImageResizeCanvas(cast image, newWidth, newHeight, offsetX, offsetY, cast fill); }      // Resize canvas and fill with color
    @:native("ImageMipmaps")                             private static function _ImageMipmaps(image:cpp.RawPointer<RayImage>):Void;      // Compute all mipmap levels for a provided image
                                                         public static inline function ImageMipmaps(image:cpp.RawPointer<Image>):Void {  _ImageMipmaps(cast image); }      // Compute all mipmap levels for a provided image
    @:native("ImageDither")                              private static function _ImageDither(image:cpp.RawPointer<RayImage>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;      // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
                                                         public static inline function ImageDither(image:cpp.RawPointer<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void {  _ImageDither(cast image, rBpp, gBpp, bBpp, aBpp); }      // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
    @:native("ImageFlipVertical")                        private static function _ImageFlipVertical(image:cpp.RawPointer<RayImage>):Void;      // Flip image vertically
                                                         public static inline function ImageFlipVertical(image:cpp.RawPointer<Image>):Void {  _ImageFlipVertical(cast image); }      // Flip image vertically
    @:native("ImageFlipHorizontal")                      private static function _ImageFlipHorizontal(image:cpp.RawPointer<RayImage>):Void;      // Flip image horizontally
                                                         public static inline function ImageFlipHorizontal(image:cpp.RawPointer<Image>):Void {  _ImageFlipHorizontal(cast image); }      // Flip image horizontally
    @:native("ImageRotateCW")                            private static function _ImageRotateCW(image:cpp.RawPointer<RayImage>):Void;      // Rotate image clockwise 90deg
                                                         public static inline function ImageRotateCW(image:cpp.RawPointer<Image>):Void {  _ImageRotateCW(cast image); }      // Rotate image clockwise 90deg
    @:native("ImageRotateCCW")                           private static function _ImageRotateCCW(image:cpp.RawPointer<RayImage>):Void;      // Rotate image counter-clockwise 90deg
                                                         public static inline function ImageRotateCCW(image:cpp.RawPointer<Image>):Void {  _ImageRotateCCW(cast image); }      // Rotate image counter-clockwise 90deg
    @:native("ImageColorTint")                           private static function _ImageColorTint(image:cpp.RawPointer<RayImage>, color:RayColor):Void;      // Modify image color: tint
                                                         public static inline function ImageColorTint(image:cpp.RawPointer<Image>, color:Color):Void {  _ImageColorTint(cast image, cast color); }      // Modify image color: tint
    @:native("ImageColorInvert")                         private static function _ImageColorInvert(image:cpp.RawPointer<RayImage>):Void;      // Modify image color: invert
                                                         public static inline function ImageColorInvert(image:cpp.RawPointer<Image>):Void {  _ImageColorInvert(cast image); }      // Modify image color: invert
    @:native("ImageColorGrayscale")                      private static function _ImageColorGrayscale(image:cpp.RawPointer<RayImage>):Void;      // Modify image color: grayscale
                                                         public static inline function ImageColorGrayscale(image:cpp.RawPointer<Image>):Void {  _ImageColorGrayscale(cast image); }      // Modify image color: grayscale
    @:native("ImageColorContrast")                       private static function _ImageColorContrast(image:cpp.RawPointer<RayImage>, contrast:Float):Void;      // Modify image color: contrast (-100 to 100)
                                                         public static inline function ImageColorContrast(image:cpp.RawPointer<Image>, contrast:Float):Void {  _ImageColorContrast(cast image, contrast); }      // Modify image color: contrast (-100 to 100)
    @:native("ImageColorBrightness")                     private static function _ImageColorBrightness(image:cpp.RawPointer<RayImage>, brightness:Int):Void;      // Modify image color: brightness (-255 to 255)
                                                         public static inline function ImageColorBrightness(image:cpp.RawPointer<Image>, brightness:Int):Void {  _ImageColorBrightness(cast image, brightness); }      // Modify image color: brightness (-255 to 255)
    @:native("ImageColorReplace")                        private static function _ImageColorReplace(image:cpp.RawPointer<RayImage>, color:RayColor, replace:RayColor):Void;      // Modify image color: replace color
                                                         public static inline function ImageColorReplace(image:cpp.RawPointer<Image>, color:Color, replace:Color):Void {  _ImageColorReplace(cast image, cast color, cast replace); }      // Modify image color: replace color
    @:native("LoadImageColors")                          private static function _LoadImageColors(image:RayImage):cpp.RawPointer<RayColor>;      // Load color data from image as a Color array (RGBA - 32bit)
                                                         public static inline function LoadImageColors(image:Image):cpp.RawPointer<Color> { return cast _LoadImageColors(cast image); }      // Load color data from image as a Color array (RGBA - 32bit)
    @:native("LoadImagePalette")                         private static function _LoadImagePalette(image:RayImage, maxPaletteSize:Int, colorCount:cpp.RawPointer<Int>):cpp.RawPointer<RayColor>;      // Load colors palette from image as a Color array (RGBA - 32bit)
                                                         public static inline function LoadImagePalette(image:Image, maxPaletteSize:Int, colorCount:cpp.RawPointer<Int>):cpp.RawPointer<Color> { return cast _LoadImagePalette(cast image, maxPaletteSize, cast colorCount); }      // Load colors palette from image as a Color array (RGBA - 32bit)
    @:native("UnloadImageColors")                        private static function _UnloadImageColors(colors:cpp.RawPointer<RayColor>):Void;      // Unload color data loaded with LoadImageColors()
                                                         public static inline function UnloadImageColors(colors:cpp.RawPointer<Color>):Void {  _UnloadImageColors(cast colors); }      // Unload color data loaded with LoadImageColors()
    @:native("UnloadImagePalette")                       private static function _UnloadImagePalette(colors:cpp.RawPointer<RayColor>):Void;      // Unload colors palette loaded with LoadImagePalette()
                                                         public static inline function UnloadImagePalette(colors:cpp.RawPointer<Color>):Void {  _UnloadImagePalette(cast colors); }      // Unload colors palette loaded with LoadImagePalette()
    @:native("GetImageAlphaBorder")                      private static function _GetImageAlphaBorder(image:RayImage, threshold:Float):RayRectangle;      // Get image alpha border rectangle
                                                         public static inline function GetImageAlphaBorder(image:Image, threshold:Float):Rectangle { return cast _GetImageAlphaBorder(cast image, threshold); }      // Get image alpha border rectangle
    @:native("GetImageColor")                            private static function _GetImageColor(image:RayImage, x:Int, y:Int):RayColor;      // Get image pixel color at (x, y) position
                                                         public static inline function GetImageColor(image:Image, x:Int, y:Int):Color { return cast _GetImageColor(cast image, x, y); }      // Get image pixel color at (x, y) position
    @:native("ImageClearBackground")                     private static function _ImageClearBackground(dst:cpp.RawPointer<RayImage>, color:RayColor):Void;      // Clear image background with given color
                                                         public static inline function ImageClearBackground(dst:cpp.RawPointer<Image>, color:Color):Void {  _ImageClearBackground(cast dst, cast color); }      // Clear image background with given color
    @:native("ImageDrawPixel")                           private static function _ImageDrawPixel(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, color:RayColor):Void;      // Draw pixel within an image
                                                         public static inline function ImageDrawPixel(dst:cpp.RawPointer<Image>, posX:Int, posY:Int, color:Color):Void {  _ImageDrawPixel(cast dst, posX, posY, cast color); }      // Draw pixel within an image
    @:native("ImageDrawPixelV")                          private static function _ImageDrawPixelV(dst:cpp.RawPointer<RayImage>, position:RayVector2, color:RayColor):Void;      // Draw pixel within an image (Vector version)
                                                         public static inline function ImageDrawPixelV(dst:cpp.RawPointer<Image>, position:Vector2, color:Color):Void {  _ImageDrawPixelV(cast dst, cast position, cast color); }      // Draw pixel within an image (Vector version)
    @:native("ImageDrawLine")                            private static function _ImageDrawLine(dst:cpp.RawPointer<RayImage>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:RayColor):Void;      // Draw line within an image
                                                         public static inline function ImageDrawLine(dst:cpp.RawPointer<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void {  _ImageDrawLine(cast dst, startPosX, startPosY, endPosX, endPosY, cast color); }      // Draw line within an image
    @:native("ImageDrawLineV")                           private static function _ImageDrawLineV(dst:cpp.RawPointer<RayImage>, start:RayVector2, end:RayVector2, color:RayColor):Void;      // Draw line within an image (Vector version)
                                                         public static inline function ImageDrawLineV(dst:cpp.RawPointer<Image>, start:Vector2, end:Vector2, color:Color):Void {  _ImageDrawLineV(cast dst, cast start, cast end, cast color); }      // Draw line within an image (Vector version)
    @:native("ImageDrawCircle")                          private static function _ImageDrawCircle(dst:cpp.RawPointer<RayImage>, centerX:Int, centerY:Int, radius:Int, color:RayColor):Void;      // Draw circle within an image
                                                         public static inline function ImageDrawCircle(dst:cpp.RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void {  _ImageDrawCircle(cast dst, centerX, centerY, radius, cast color); }      // Draw circle within an image
    @:native("ImageDrawCircleV")                         private static function _ImageDrawCircleV(dst:cpp.RawPointer<RayImage>, center:RayVector2, radius:Int, color:RayColor):Void;      // Draw circle within an image (Vector version)
                                                         public static inline function ImageDrawCircleV(dst:cpp.RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void {  _ImageDrawCircleV(cast dst, cast center, radius, cast color); }      // Draw circle within an image (Vector version)
    @:native("ImageDrawRectangle")                       private static function _ImageDrawRectangle(dst:cpp.RawPointer<RayImage>, posX:Int, posY:Int, width:Int, height:Int, color:RayColor):Void;      // Draw rectangle within an image
                                                         public static inline function ImageDrawRectangle(dst:cpp.RawPointer<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void {  _ImageDrawRectangle(cast dst, posX, posY, width, height, cast color); }      // Draw rectangle within an image
    @:native("ImageDrawRectangleV")                      private static function _ImageDrawRectangleV(dst:cpp.RawPointer<RayImage>, position:RayVector2, size:RayVector2, color:RayColor):Void;      // Draw rectangle within an image (Vector version)
                                                         public static inline function ImageDrawRectangleV(dst:cpp.RawPointer<Image>, position:Vector2, size:Vector2, color:Color):Void {  _ImageDrawRectangleV(cast dst, cast position, cast size, cast color); }      // Draw rectangle within an image (Vector version)
    @:native("ImageDrawRectangleRec")                    private static function _ImageDrawRectangleRec(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, color:RayColor):Void;      // Draw rectangle within an image
                                                         public static inline function ImageDrawRectangleRec(dst:cpp.RawPointer<Image>, rec:Rectangle, color:Color):Void {  _ImageDrawRectangleRec(cast dst, cast rec, cast color); }      // Draw rectangle within an image
    @:native("ImageDrawRectangleLines")                  private static function _ImageDrawRectangleLines(dst:cpp.RawPointer<RayImage>, rec:RayRectangle, thick:Int, color:RayColor):Void;      // Draw rectangle lines within an image
                                                         public static inline function ImageDrawRectangleLines(dst:cpp.RawPointer<Image>, rec:Rectangle, thick:Int, color:Color):Void {  _ImageDrawRectangleLines(cast dst, cast rec, thick, cast color); }      // Draw rectangle lines within an image
    @:native("ImageDraw")                                private static function _ImageDraw(dst:cpp.RawPointer<RayImage>, src:RayImage, srcRec:RayRectangle, dstRec:RayRectangle, tint:RayColor):Void;      // Draw a source image within a destination image (tint applied to source)
                                                         public static inline function ImageDraw(dst:cpp.RawPointer<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void {  _ImageDraw(cast dst, cast src, cast srcRec, cast dstRec, cast tint); }      // Draw a source image within a destination image (tint applied to source)
    @:native("ImageDrawText")                            private static function _ImageDrawText(dst:cpp.RawPointer<RayImage>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:RayColor):Void;      // Draw text (using default font) within an image (destination)
                                                         public static inline function ImageDrawText(dst:cpp.RawPointer<Image>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void {  _ImageDrawText(cast dst, cast text, posX, posY, fontSize, cast color); }      // Draw text (using default font) within an image (destination)
    @:native("ImageDrawTextEx")                          private static function _ImageDrawTextEx(dst:cpp.RawPointer<RayImage>, font:RayFont, text:cpp.ConstCharStar, position:RayVector2, fontSize:Float, spacing:Float, tint:RayColor):Void;      // Draw text (custom sprite font) within an image (destination)
                                                         public static inline function ImageDrawTextEx(dst:cpp.RawPointer<Image>, font:Font, text:cpp.ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void {  _ImageDrawTextEx(cast dst, cast font, cast text, cast position, fontSize, spacing, cast tint); }      // Draw text (custom sprite font) within an image (destination)
    @:native("LoadTexture")                              private static function _LoadTexture(fileName:cpp.ConstCharStar):RayTexture;      // Load texture from file into GPU memory (VRAM)
                                                         public static inline function LoadTexture(fileName:cpp.ConstCharStar):Texture2D { return cast _LoadTexture(cast fileName); }      // Load texture from file into GPU memory (VRAM)
    @:native("LoadTextureFromImage")                     private static function _LoadTextureFromImage(image:RayImage):RayTexture;      // Load texture from image data
                                                         public static inline function LoadTextureFromImage(image:Image):Texture2D { return cast _LoadTextureFromImage(cast image); }      // Load texture from image data
    @:native("LoadTextureCubemap")                       private static function _LoadTextureCubemap(image:RayImage, layout:Int):RayTexture;      // Load cubemap from image, multiple image cubemap layouts supported
                                                         public static inline function LoadTextureCubemap(image:Image, layout:Int):TextureCubemap { return cast _LoadTextureCubemap(cast image, layout); }      // Load cubemap from image, multiple image cubemap layouts supported
    @:native("LoadRenderTexture")                        private static function _LoadRenderTexture(width:Int, height:Int):RayRenderTexture;      // Load texture for rendering (framebuffer)
                                                         public static inline function LoadRenderTexture(width:Int, height:Int):RenderTexture2D { return cast _LoadRenderTexture(width, height); }      // Load texture for rendering (framebuffer)
    @:native("UnloadTexture")                            private static function _UnloadTexture(texture:RayTexture):Void;      // Unload texture from GPU memory (VRAM)
                                                         public static inline function UnloadTexture(texture:Texture2D):Void {  _UnloadTexture(cast texture); }      // Unload texture from GPU memory (VRAM)
    @:native("UnloadRenderTexture")                      private static function _UnloadRenderTexture(target:RayRenderTexture):Void;      // Unload render texture from GPU memory (VRAM)
                                                         public static inline function UnloadRenderTexture(target:RenderTexture2D):Void {  _UnloadRenderTexture(cast target); }      // Unload render texture from GPU memory (VRAM)
    @:native("UpdateTexture")                            private static function _UpdateTexture(texture:RayTexture, pixels:cpp.RawConstPointer<cpp.Void>):Void;      // Update GPU texture with new data
                                                         public static inline function UpdateTexture(texture:Texture2D, pixels:cpp.RawConstPointer<cpp.Void>):Void {  _UpdateTexture(cast texture, cast pixels); }      // Update GPU texture with new data
    @:native("UpdateTextureRec")                         private static function _UpdateTextureRec(texture:RayTexture, rec:RayRectangle, pixels:cpp.RawConstPointer<cpp.Void>):Void;      // Update GPU texture rectangle with new data
                                                         public static inline function UpdateTextureRec(texture:Texture2D, rec:Rectangle, pixels:cpp.RawConstPointer<cpp.Void>):Void {  _UpdateTextureRec(cast texture, cast rec, cast pixels); }      // Update GPU texture rectangle with new data
    @:native("GenTextureMipmaps")                        private static function _GenTextureMipmaps(texture:cpp.RawPointer<RayTexture>):Void;      // Generate GPU mipmaps for a texture
                                                         public static inline function GenTextureMipmaps(texture:cpp.RawPointer<Texture2D>):Void {  _GenTextureMipmaps(cast texture); }      // Generate GPU mipmaps for a texture
    @:native("SetTextureFilter")                         private static function _SetTextureFilter(texture:RayTexture, filter:Int):Void;      // Set texture scaling filter mode
                                                         public static inline function SetTextureFilter(texture:Texture2D, filter:Int):Void {  _SetTextureFilter(cast texture, filter); }      // Set texture scaling filter mode
    @:native("SetTextureWrap")                           private static function _SetTextureWrap(texture:RayTexture, wrap:Int):Void;      // Set texture wrapping mode
                                                         public static inline function SetTextureWrap(texture:Texture2D, wrap:Int):Void {  _SetTextureWrap(cast texture, wrap); }      // Set texture wrapping mode
    @:native("DrawTexture")                              private static function _DrawTexture(texture:RayTexture, posX:Int, posY:Int, tint:RayColor):Void;      // Draw a Texture2D
                                                         public static inline function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void {  _DrawTexture(cast texture, posX, posY, cast tint); }      // Draw a Texture2D
    @:native("DrawTextureV")                             private static function _DrawTextureV(texture:RayTexture, position:RayVector2, tint:RayColor):Void;      // Draw a Texture2D with position defined as Vector2
                                                         public static inline function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void {  _DrawTextureV(cast texture, cast position, cast tint); }      // Draw a Texture2D with position defined as Vector2
    @:native("DrawTextureEx")                            private static function _DrawTextureEx(texture:RayTexture, position:RayVector2, rotation:Float, scale:Float, tint:RayColor):Void;      // Draw a Texture2D with extended parameters
                                                         public static inline function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void {  _DrawTextureEx(cast texture, cast position, rotation, scale, cast tint); }      // Draw a Texture2D with extended parameters
    @:native("DrawTextureRec")                           private static function _DrawTextureRec(texture:RayTexture, source:RayRectangle, position:RayVector2, tint:RayColor):Void;      // Draw a part of a texture defined by a rectangle
                                                         public static inline function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void {  _DrawTextureRec(cast texture, cast source, cast position, cast tint); }      // Draw a part of a texture defined by a rectangle
    @:native("DrawTextureQuad")                          private static function _DrawTextureQuad(texture:RayTexture, tiling:RayVector2, offset:RayVector2, quad:RayRectangle, tint:RayColor):Void;      // Draw texture quad with tiling and offset parameters
                                                         public static inline function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void {  _DrawTextureQuad(cast texture, cast tiling, cast offset, cast quad, cast tint); }      // Draw texture quad with tiling and offset parameters
    @:native("DrawTextureTiled")                         private static function _DrawTextureTiled(texture:RayTexture, source:RayRectangle, dest:RayRectangle, origin:RayVector2, rotation:Float, scale:Float, tint:RayColor):Void;      // Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.
                                                         public static inline function DrawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float, scale:Float, tint:Color):Void {  _DrawTextureTiled(cast texture, cast source, cast dest, cast origin, rotation, scale, cast tint); }      // Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.
    @:native("DrawTexturePro")                           private static function _DrawTexturePro(texture:RayTexture, source:RayRectangle, dest:RayRectangle, origin:RayVector2, rotation:Float, tint:RayColor):Void;      // Draw a part of a texture defined by a rectangle with 'pro' parameters
                                                         public static inline function DrawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void {  _DrawTexturePro(cast texture, cast source, cast dest, cast origin, rotation, cast tint); }      // Draw a part of a texture defined by a rectangle with 'pro' parameters
    @:native("DrawTextureNPatch")                        private static function _DrawTextureNPatch(texture:RayTexture, nPatchInfo:RayNPatchInfo, dest:RayRectangle, origin:RayVector2, rotation:Float, tint:RayColor):Void;      // Draws a texture (or part of it) that stretches or shrinks nicely
                                                         public static inline function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void {  _DrawTextureNPatch(cast texture, cast nPatchInfo, cast dest, cast origin, rotation, cast tint); }      // Draws a texture (or part of it) that stretches or shrinks nicely
    @:native("DrawTexturePoly")                          private static function _DrawTexturePoly(texture:RayTexture, center:RayVector2, points:cpp.RawPointer<RayVector2>, texcoords:cpp.RawPointer<RayVector2>, pointCount:Int, tint:RayColor):Void;      // Draw a textured polygon
                                                         public static inline function DrawTexturePoly(texture:Texture2D, center:Vector2, points:cpp.RawPointer<Vector2>, texcoords:cpp.RawPointer<Vector2>, pointCount:Int, tint:Color):Void {  _DrawTexturePoly(cast texture, cast center, cast points, cast texcoords, pointCount, cast tint); }      // Draw a textured polygon
    @:native("Fade")                                     private static function _Fade(color:RayColor, alpha:Float):RayColor;      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
                                                         public static inline function Fade(color:Color, alpha:Float):Color { return cast _Fade(cast color, alpha); }      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
    @:native("ColorToInt")                               private static function _ColorToInt(color:RayColor):Int;      // Get hexadecimal value for a Color
                                                         public static inline function ColorToInt(color:Color):Int { return _ColorToInt(cast color); }      // Get hexadecimal value for a Color
    @:native("ColorNormalize")                           private static function _ColorNormalize(color:RayColor):RayVector4;      // Get Color normalized as float [0..1]
                                                         public static inline function ColorNormalize(color:Color):Vector4 { return cast _ColorNormalize(cast color); }      // Get Color normalized as float [0..1]
    @:native("ColorFromNormalized")                      private static function _ColorFromNormalized(normalized:RayVector4):RayColor;      // Get Color from normalized values [0..1]
                                                         public static inline function ColorFromNormalized(normalized:Vector4):Color { return cast _ColorFromNormalized(cast normalized); }      // Get Color from normalized values [0..1]
    @:native("ColorToHSV")                               private static function _ColorToHSV(color:RayColor):RayVector3;      // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
                                                         public static inline function ColorToHSV(color:Color):Vector3 { return cast _ColorToHSV(cast color); }      // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
    @:native("ColorFromHSV")                             private static function _ColorFromHSV(hue:Float, saturation:Float, value:Float):RayColor;      // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
                                                         public static inline function ColorFromHSV(hue:Float, saturation:Float, value:Float):Color { return cast _ColorFromHSV(hue, saturation, value); }      // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
    @:native("ColorAlpha")                               private static function _ColorAlpha(color:RayColor, alpha:Float):RayColor;      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
                                                         public static inline function ColorAlpha(color:Color, alpha:Float):Color { return cast _ColorAlpha(cast color, alpha); }      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
    @:native("ColorAlphaBlend")                          private static function _ColorAlphaBlend(dst:RayColor, src:RayColor, tint:RayColor):RayColor;      // Get src alpha-blended into dst color with tint
                                                         public static inline function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color { return cast _ColorAlphaBlend(cast dst, cast src, cast tint); }      // Get src alpha-blended into dst color with tint
    @:native("GetColor")                                 private static function _GetColor(hexValue:Int):RayColor;      // Get Color structure from hexadecimal value
                                                         public static inline function GetColor(hexValue:Int):Color { return cast _GetColor(hexValue); }      // Get Color structure from hexadecimal value
    @:native("GetPixelColor")                            private static function _GetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):RayColor;      // Get Color from a source pixel pointer of certain format
                                                         public static inline function GetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):Color { return cast _GetPixelColor(cast srcPtr, format); }      // Get Color from a source pixel pointer of certain format
    @:native("SetPixelColor")                            private static function _SetPixelColor(dstPtr:cpp.RawPointer<cpp.Void>, color:RayColor, format:Int):Void;      // Set color formatted into destination pixel pointer
                                                         public static inline function SetPixelColor(dstPtr:cpp.RawPointer<cpp.Void>, color:Color, format:Int):Void {  _SetPixelColor(cast dstPtr, cast color, format); }      // Set color formatted into destination pixel pointer
    @:native("GetPixelDataSize")                         private static function _GetPixelDataSize(width:Int, height:Int, format:Int):Int;      // Get pixel data size in bytes for certain format
                                                         public static inline function GetPixelDataSize(width:Int, height:Int, format:Int):Int { return _GetPixelDataSize(width, height, format); }      // Get pixel data size in bytes for certain format
    @:native("GetFontDefault")                           private static function _GetFontDefault():RayFont;      // Get the default Font
                                                         public static inline function GetFontDefault():Font { return cast _GetFontDefault(); }      // Get the default Font
    @:native("LoadFont")                                 private static function _LoadFont(fileName:cpp.ConstCharStar):RayFont;      // Load font from file into GPU memory (VRAM)
                                                         public static inline function LoadFont(fileName:cpp.ConstCharStar):Font { return cast _LoadFont(cast fileName); }      // Load font from file into GPU memory (VRAM)
    @:native("LoadFontEx")                               private static function _LoadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):RayFont;      // Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
                                                         public static inline function LoadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):Font { return cast _LoadFontEx(cast fileName, fontSize, cast fontChars, glyphCount); }      // Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
    @:native("LoadFontFromImage")                        private static function _LoadFontFromImage(image:RayImage, key:RayColor, firstChar:Int):RayFont;      // Load font from Image (XNA style)
                                                         public static inline function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font { return cast _LoadFontFromImage(cast image, cast key, firstChar); }      // Load font from Image (XNA style)
    @:native("LoadFontFromMemory")                       private static function _LoadFontFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):RayFont;      // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
                                                         public static inline function LoadFontFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):Font { return cast _LoadFontFromMemory(cast fileType, cast fileData, dataSize, fontSize, cast fontChars, glyphCount); }      // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
    @:native("LoadFontData")                             private static function _LoadFontData(fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int, type:Int):cpp.RawPointer<RayGlyphInfo>;      // Load font data for further use
                                                         public static inline function LoadFontData(fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int, type:Int):cpp.RawPointer<GlyphInfo> { return cast _LoadFontData(cast fileData, dataSize, fontSize, cast fontChars, glyphCount, type); }      // Load font data for further use
    @:native("GenImageFontAtlas")                        private static function _GenImageFontAtlas(chars:cpp.RawConstPointer<RayGlyphInfo>, recs:cpp.RawPointer<cpp.RawPointer<RayRectangle>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):RayImage;      // Generate image font atlas using chars info
                                                         public static inline function GenImageFontAtlas(chars:cpp.RawConstPointer<GlyphInfo>, recs:cpp.RawPointer<cpp.RawPointer<Rectangle>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):Image { return cast _GenImageFontAtlas(cast chars, cast recs, glyphCount, fontSize, padding, packMethod); }      // Generate image font atlas using chars info
    @:native("UnloadFontData")                           private static function _UnloadFontData(chars:cpp.RawPointer<RayGlyphInfo>, glyphCount:Int):Void;      // Unload font chars info data (RAM)
                                                         public static inline function UnloadFontData(chars:cpp.RawPointer<GlyphInfo>, glyphCount:Int):Void {  _UnloadFontData(cast chars, glyphCount); }      // Unload font chars info data (RAM)
    @:native("UnloadFont")                               private static function _UnloadFont(font:RayFont):Void;      // Unload font from GPU memory (VRAM)
                                                         public static inline function UnloadFont(font:Font):Void {  _UnloadFont(cast font); }      // Unload font from GPU memory (VRAM)
    @:native("ExportFontAsCode")                         private static function _ExportFontAsCode(font:RayFont, fileName:cpp.ConstCharStar):Bool;      // Export font as code file, returns true on success
                                                         public static inline function ExportFontAsCode(font:Font, fileName:cpp.ConstCharStar):Bool { return _ExportFontAsCode(cast font, cast fileName); }      // Export font as code file, returns true on success
    @:native("DrawFPS")                                  private static function _DrawFPS(posX:Int, posY:Int):Void;      // Draw current FPS
                                                         public static inline function DrawFPS(posX:Int, posY:Int):Void {  _DrawFPS(posX, posY); }      // Draw current FPS
    @:native("DrawText")                                 private static function _DrawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:RayColor):Void;      // Draw text (using default font)
                                                         public static inline function DrawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void {  _DrawText(cast text, posX, posY, fontSize, cast color); }      // Draw text (using default font)
    @:native("DrawTextEx")                               private static function _DrawTextEx(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, fontSize:Float, spacing:Float, tint:RayColor):Void;      // Draw text using font and additional parameters
                                                         public static inline function DrawTextEx(font:Font, text:cpp.ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void {  _DrawTextEx(cast font, cast text, cast position, fontSize, spacing, cast tint); }      // Draw text using font and additional parameters
    @:native("DrawTextPro")                              private static function _DrawTextPro(font:RayFont, text:cpp.ConstCharStar, position:RayVector2, origin:RayVector2, rotation:Float, fontSize:Float, spacing:Float, tint:RayColor):Void;      // Draw text using Font and pro parameters (rotation)
                                                         public static inline function DrawTextPro(font:Font, text:cpp.ConstCharStar, position:Vector2, origin:Vector2, rotation:Float, fontSize:Float, spacing:Float, tint:Color):Void {  _DrawTextPro(cast font, cast text, cast position, cast origin, rotation, fontSize, spacing, cast tint); }      // Draw text using Font and pro parameters (rotation)
    @:native("DrawTextCodepoint")                        private static function _DrawTextCodepoint(font:RayFont, codepoint:Int, position:RayVector2, fontSize:Float, tint:RayColor):Void;      // Draw one character (codepoint)
                                                         public static inline function DrawTextCodepoint(font:Font, codepoint:Int, position:Vector2, fontSize:Float, tint:Color):Void {  _DrawTextCodepoint(cast font, codepoint, cast position, fontSize, cast tint); }      // Draw one character (codepoint)
    @:native("DrawTextCodepoints")                       private static function _DrawTextCodepoints(font:RayFont, codepoints:cpp.RawConstPointer<Int>, count:Int, position:RayVector2, fontSize:Float, spacing:Float, tint:RayColor):Void;      // Draw multiple character (codepoint)
                                                         public static inline function DrawTextCodepoints(font:Font, codepoints:cpp.RawConstPointer<Int>, count:Int, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void {  _DrawTextCodepoints(cast font, cast codepoints, count, cast position, fontSize, spacing, cast tint); }      // Draw multiple character (codepoint)
    @:native("MeasureText")                              private static function _MeasureText(text:cpp.ConstCharStar, fontSize:Int):Int;      // Measure string width for default font
                                                         public static inline function MeasureText(text:cpp.ConstCharStar, fontSize:Int):Int { return _MeasureText(cast text, fontSize); }      // Measure string width for default font
    @:native("MeasureTextEx")                            private static function _MeasureTextEx(font:RayFont, text:cpp.ConstCharStar, fontSize:Float, spacing:Float):RayVector2;      // Measure string size for Font
                                                         public static inline function MeasureTextEx(font:Font, text:cpp.ConstCharStar, fontSize:Float, spacing:Float):Vector2 { return cast _MeasureTextEx(cast font, cast text, fontSize, spacing); }      // Measure string size for Font
    @:native("GetGlyphIndex")                            private static function _GetGlyphIndex(font:RayFont, codepoint:Int):Int;      // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
                                                         public static inline function GetGlyphIndex(font:Font, codepoint:Int):Int { return _GetGlyphIndex(cast font, codepoint); }      // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
    @:native("GetGlyphInfo")                             private static function _GetGlyphInfo(font:RayFont, codepoint:Int):RayGlyphInfo;      // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
                                                         public static inline function GetGlyphInfo(font:Font, codepoint:Int):GlyphInfo { return cast _GetGlyphInfo(cast font, codepoint); }      // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
    @:native("GetGlyphAtlasRec")                         private static function _GetGlyphAtlasRec(font:RayFont, codepoint:Int):RayRectangle;      // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
                                                         public static inline function GetGlyphAtlasRec(font:Font, codepoint:Int):Rectangle { return cast _GetGlyphAtlasRec(cast font, codepoint); }      // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
    @:native("LoadCodepoints")                           private static function _LoadCodepoints(text:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<Int>;      // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
                                                         public static inline function LoadCodepoints(text:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<Int> { return cast _LoadCodepoints(cast text, cast count); }      // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
    @:native("UnloadCodepoints")                         private static function _UnloadCodepoints(codepoints:cpp.RawPointer<Int>):Void;      // Unload codepoints data from memory
                                                         public static inline function UnloadCodepoints(codepoints:cpp.RawPointer<Int>):Void {  _UnloadCodepoints(cast codepoints); }      // Unload codepoints data from memory
    @:native("GetCodepointCount")                        private static function _GetCodepointCount(text:cpp.ConstCharStar):Int;      // Get total number of codepoints in a UTF-8 encoded string
                                                         public static inline function GetCodepointCount(text:cpp.ConstCharStar):Int { return _GetCodepointCount(cast text); }      // Get total number of codepoints in a UTF-8 encoded string
    @:native("GetCodepoint")                             private static function _GetCodepoint(text:cpp.ConstCharStar, bytesProcessed:cpp.RawPointer<Int>):Int;      // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
                                                         public static inline function GetCodepoint(text:cpp.ConstCharStar, bytesProcessed:cpp.RawPointer<Int>):Int { return _GetCodepoint(cast text, cast bytesProcessed); }      // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    @:native("CodepointToUTF8")                          private static function _CodepointToUTF8(codepoint:Int, byteSize:cpp.RawPointer<Int>):cpp.ConstCharStar;      // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
                                                         public static inline function CodepointToUTF8(codepoint:Int, byteSize:cpp.RawPointer<Int>):cpp.ConstCharStar { return cast _CodepointToUTF8(codepoint, cast byteSize); }      // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
    @:native("TextCodepointsToUTF8")                     private static function _TextCodepointsToUTF8(codepoints:cpp.RawConstPointer<Int>, length:Int):cpp.RawPointer<Int>;      // Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)
                                                         public static inline function TextCodepointsToUTF8(codepoints:cpp.RawConstPointer<Int>, length:Int):cpp.RawPointer<Int> { return cast _TextCodepointsToUTF8(cast codepoints, length); }      // Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)
    @:native("TextCopy")                                 private static function _TextCopy(dst:cpp.RawPointer<Int>, src:cpp.ConstCharStar):Int;      // Copy one string to another, returns bytes copied
                                                         public static inline function TextCopy(dst:cpp.RawPointer<Int>, src:cpp.ConstCharStar):Int { return _TextCopy(cast dst, cast src); }      // Copy one string to another, returns bytes copied
    @:native("TextIsEqual")                              private static function _TextIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool;      // Check if two text string are equal
                                                         public static inline function TextIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool { return _TextIsEqual(cast text1, cast text2); }      // Check if two text string are equal
    @:native("TextLength")                               private static function _TextLength(text:cpp.ConstCharStar):Int;      // Get text length, checks for '\0' ending
                                                         public static inline function TextLength(text:cpp.ConstCharStar):Int { return _TextLength(cast text); }      // Get text length, checks for '\0' ending
    @:native("TextFormat")                               private static function _TextFormat(text:cpp.ConstCharStar, args:haxe.extern.Rest<Any>):cpp.ConstCharStar;      // Text formatting with variables (sprintf() style)
                                                         public static inline function TextFormat(text:cpp.ConstCharStar, args:haxe.extern.Rest<Any>):cpp.ConstCharStar { return cast _TextFormat(cast text, cast args); }      // Text formatting with variables (sprintf() style)
    @:native("TextSubtext")                              private static function _TextSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar;      // Get a piece of a text string
                                                         public static inline function TextSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar { return cast _TextSubtext(cast text, position, length); }      // Get a piece of a text string
    @:native("TextReplace")                              private static function _TextReplace(text:cpp.RawPointer<Int>, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.RawPointer<Int>;      // Replace text string (WARNING: memory must be freed!)
                                                         public static inline function TextReplace(text:cpp.RawPointer<Int>, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.RawPointer<Int> { return cast _TextReplace(cast text, cast replace, cast by); }      // Replace text string (WARNING: memory must be freed!)
    @:native("TextInsert")                               private static function _TextInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.RawPointer<Int>;      // Insert text in a position (WARNING: memory must be freed!)
                                                         public static inline function TextInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.RawPointer<Int> { return cast _TextInsert(cast text, cast insert, position); }      // Insert text in a position (WARNING: memory must be freed!)
    @:native("TextJoin")                                 private static function _TextJoin(textList:cpp.RawPointer<cpp.RawPointer<Int>>, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar;      // Join text strings with delimiter
                                                         public static inline function TextJoin(textList:cpp.RawPointer<cpp.RawPointer<Int>>, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar { return cast _TextJoin(cast textList, count, cast delimiter); }      // Join text strings with delimiter
    @:native("TextSplit")                                private static function _TextSplit(text:cpp.ConstCharStar, delimiter:Int, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Split text into multiple strings
                                                         public static inline function TextSplit(text:cpp.ConstCharStar, delimiter:Int, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>> { return cast _TextSplit(cast text, delimiter, cast count); }      // Split text into multiple strings
    @:native("TextAppend")                               private static function _TextAppend(text:cpp.RawPointer<Int>, append:cpp.ConstCharStar, position:cpp.RawPointer<Int>):Void;      // Append text at specific position and move cursor!
                                                         public static inline function TextAppend(text:cpp.RawPointer<Int>, append:cpp.ConstCharStar, position:cpp.RawPointer<Int>):Void {  _TextAppend(cast text, cast append, cast position); }      // Append text at specific position and move cursor!
    @:native("TextFindIndex")                            private static function _TextFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int;      // Find first text occurrence within a string
                                                         public static inline function TextFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int { return _TextFindIndex(cast text, cast find); }      // Find first text occurrence within a string
    @:native("TextToUpper")                              private static function _TextToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get upper case version of provided string
                                                         public static inline function TextToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar { return cast _TextToUpper(cast text); }      // Get upper case version of provided string
    @:native("TextToLower")                              private static function _TextToLower(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get lower case version of provided string
                                                         public static inline function TextToLower(text:cpp.ConstCharStar):cpp.ConstCharStar { return cast _TextToLower(cast text); }      // Get lower case version of provided string
    @:native("TextToPascal")                             private static function _TextToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get Pascal case notation version of provided string
                                                         public static inline function TextToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar { return cast _TextToPascal(cast text); }      // Get Pascal case notation version of provided string
    @:native("TextToInteger")                            private static function _TextToInteger(text:cpp.ConstCharStar):Int;      // Get integer value from text (negative values not supported)
                                                         public static inline function TextToInteger(text:cpp.ConstCharStar):Int { return _TextToInteger(cast text); }      // Get integer value from text (negative values not supported)
    @:native("DrawLine3D")                               private static function _DrawLine3D(startPos:RayVector3, endPos:RayVector3, color:RayColor):Void;      // Draw a line in 3D world space
                                                         public static inline function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void {  _DrawLine3D(cast startPos, cast endPos, cast color); }      // Draw a line in 3D world space
    @:native("DrawPoint3D")                              private static function _DrawPoint3D(position:RayVector3, color:RayColor):Void;      // Draw a point in 3D space, actually a small line
                                                         public static inline function DrawPoint3D(position:Vector3, color:Color):Void {  _DrawPoint3D(cast position, cast color); }      // Draw a point in 3D space, actually a small line
    @:native("DrawCircle3D")                             private static function _DrawCircle3D(center:RayVector3, radius:Float, rotationAxis:RayVector3, rotationAngle:Float, color:RayColor):Void;      // Draw a circle in 3D world space
                                                         public static inline function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void {  _DrawCircle3D(cast center, radius, cast rotationAxis, rotationAngle, cast color); }      // Draw a circle in 3D world space
    @:native("DrawTriangle3D")                           private static function _DrawTriangle3D(v1:RayVector3, v2:RayVector3, v3:RayVector3, color:RayColor):Void;      // Draw a color-filled triangle (vertex in counter-clockwise order!)
                                                         public static inline function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void {  _DrawTriangle3D(cast v1, cast v2, cast v3, cast color); }      // Draw a color-filled triangle (vertex in counter-clockwise order!)
    @:native("DrawTriangleStrip3D")                      private static function _DrawTriangleStrip3D(points:cpp.RawPointer<RayVector3>, pointCount:Int, color:RayColor):Void;      // Draw a triangle strip defined by points
                                                         public static inline function DrawTriangleStrip3D(points:cpp.RawPointer<Vector3>, pointCount:Int, color:Color):Void {  _DrawTriangleStrip3D(cast points, pointCount, cast color); }      // Draw a triangle strip defined by points
    @:native("DrawCube")                                 private static function _DrawCube(position:RayVector3, width:Float, height:Float, length:Float, color:RayColor):Void;      // Draw cube
                                                         public static inline function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void {  _DrawCube(cast position, width, height, length, cast color); }      // Draw cube
    @:native("DrawCubeV")                                private static function _DrawCubeV(position:RayVector3, size:RayVector3, color:RayColor):Void;      // Draw cube (Vector version)
                                                         public static inline function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void {  _DrawCubeV(cast position, cast size, cast color); }      // Draw cube (Vector version)
    @:native("DrawCubeWires")                            private static function _DrawCubeWires(position:RayVector3, width:Float, height:Float, length:Float, color:RayColor):Void;      // Draw cube wires
                                                         public static inline function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void {  _DrawCubeWires(cast position, width, height, length, cast color); }      // Draw cube wires
    @:native("DrawCubeWiresV")                           private static function _DrawCubeWiresV(position:RayVector3, size:RayVector3, color:RayColor):Void;      // Draw cube wires (Vector version)
                                                         public static inline function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void {  _DrawCubeWiresV(cast position, cast size, cast color); }      // Draw cube wires (Vector version)
    @:native("DrawCubeTexture")                          private static function _DrawCubeTexture(texture:RayTexture, position:RayVector3, width:Float, height:Float, length:Float, color:RayColor):Void;      // Draw cube textured
                                                         public static inline function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void {  _DrawCubeTexture(cast texture, cast position, width, height, length, cast color); }      // Draw cube textured
    @:native("DrawCubeTextureRec")                       private static function _DrawCubeTextureRec(texture:RayTexture, source:RayRectangle, position:RayVector3, width:Float, height:Float, length:Float, color:RayColor):Void;      // Draw cube with a region of a texture
                                                         public static inline function DrawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void {  _DrawCubeTextureRec(cast texture, cast source, cast position, width, height, length, cast color); }      // Draw cube with a region of a texture
    @:native("DrawSphere")                               private static function _DrawSphere(centerPos:RayVector3, radius:Float, color:RayColor):Void;      // Draw sphere
                                                         public static inline function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void {  _DrawSphere(cast centerPos, radius, cast color); }      // Draw sphere
    @:native("DrawSphereEx")                             private static function _DrawSphereEx(centerPos:RayVector3, radius:Float, rings:Int, slices:Int, color:RayColor):Void;      // Draw sphere with extended parameters
                                                         public static inline function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void {  _DrawSphereEx(cast centerPos, radius, rings, slices, cast color); }      // Draw sphere with extended parameters
    @:native("DrawSphereWires")                          private static function _DrawSphereWires(centerPos:RayVector3, radius:Float, rings:Int, slices:Int, color:RayColor):Void;      // Draw sphere wires
                                                         public static inline function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void {  _DrawSphereWires(cast centerPos, radius, rings, slices, cast color); }      // Draw sphere wires
    @:native("DrawCylinder")                             private static function _DrawCylinder(position:RayVector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:RayColor):Void;      // Draw a cylinder/cone
                                                         public static inline function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void {  _DrawCylinder(cast position, radiusTop, radiusBottom, height, slices, cast color); }      // Draw a cylinder/cone
    @:native("DrawCylinderEx")                           private static function _DrawCylinderEx(startPos:RayVector3, endPos:RayVector3, startRadius:Float, endRadius:Float, sides:Int, color:RayColor):Void;      // Draw a cylinder with base at startPos and top at endPos
                                                         public static inline function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int, color:Color):Void {  _DrawCylinderEx(cast startPos, cast endPos, startRadius, endRadius, sides, cast color); }      // Draw a cylinder with base at startPos and top at endPos
    @:native("DrawCylinderWires")                        private static function _DrawCylinderWires(position:RayVector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:RayColor):Void;      // Draw a cylinder/cone wires
                                                         public static inline function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void {  _DrawCylinderWires(cast position, radiusTop, radiusBottom, height, slices, cast color); }      // Draw a cylinder/cone wires
    @:native("DrawCylinderWiresEx")                      private static function _DrawCylinderWiresEx(startPos:RayVector3, endPos:RayVector3, startRadius:Float, endRadius:Float, sides:Int, color:RayColor):Void;      // Draw a cylinder wires with base at startPos and top at endPos
                                                         public static inline function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int, color:Color):Void {  _DrawCylinderWiresEx(cast startPos, cast endPos, startRadius, endRadius, sides, cast color); }      // Draw a cylinder wires with base at startPos and top at endPos
    @:native("DrawPlane")                                private static function _DrawPlane(centerPos:RayVector3, size:RayVector2, color:RayColor):Void;      // Draw a plane XZ
                                                         public static inline function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void {  _DrawPlane(cast centerPos, cast size, cast color); }      // Draw a plane XZ
    @:native("DrawRay")                                  private static function _DrawRay(ray:RayRay, color:RayColor):Void;      // Draw a ray line
                                                         public static inline function DrawRay(ray:Ray, color:Color):Void {  _DrawRay(cast ray, cast color); }      // Draw a ray line
    @:native("DrawGrid")                                 private static function _DrawGrid(slices:Int, spacing:Float):Void;      // Draw a grid (centered at (0, 0, 0))
                                                         public static inline function DrawGrid(slices:Int, spacing:Float):Void {  _DrawGrid(slices, spacing); }      // Draw a grid (centered at (0, 0, 0))
    @:native("LoadModel")                                private static function _LoadModel(fileName:cpp.ConstCharStar):RayModel;      // Load model from files (meshes and materials)
                                                         public static inline function LoadModel(fileName:cpp.ConstCharStar):Model { return cast _LoadModel(cast fileName); }      // Load model from files (meshes and materials)
    @:native("LoadModelFromMesh")                        private static function _LoadModelFromMesh(mesh:RayMesh):RayModel;      // Load model from generated mesh (default material)
                                                         public static inline function LoadModelFromMesh(mesh:Mesh):Model { return cast _LoadModelFromMesh(cast mesh); }      // Load model from generated mesh (default material)
    @:native("UnloadModel")                              private static function _UnloadModel(model:RayModel):Void;      // Unload model (including meshes) from memory (RAM and/or VRAM)
                                                         public static inline function UnloadModel(model:Model):Void {  _UnloadModel(cast model); }      // Unload model (including meshes) from memory (RAM and/or VRAM)
    @:native("UnloadModelKeepMeshes")                    private static function _UnloadModelKeepMeshes(model:RayModel):Void;      // Unload model (but not meshes) from memory (RAM and/or VRAM)
                                                         public static inline function UnloadModelKeepMeshes(model:Model):Void {  _UnloadModelKeepMeshes(cast model); }      // Unload model (but not meshes) from memory (RAM and/or VRAM)
    @:native("GetModelBoundingBox")                      private static function _GetModelBoundingBox(model:RayModel):RayBoundingBox;      // Compute model bounding box limits (considers all meshes)
                                                         public static inline function GetModelBoundingBox(model:Model):BoundingBox { return cast _GetModelBoundingBox(cast model); }      // Compute model bounding box limits (considers all meshes)
    @:native("DrawModel")                                private static function _DrawModel(model:RayModel, position:RayVector3, scale:Float, tint:RayColor):Void;      // Draw a model (with texture if set)
                                                         public static inline function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void {  _DrawModel(cast model, cast position, scale, cast tint); }      // Draw a model (with texture if set)
    @:native("DrawModelEx")                              private static function _DrawModelEx(model:RayModel, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Float, scale:RayVector3, tint:RayColor):Void;      // Draw a model with extended parameters
                                                         public static inline function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void {  _DrawModelEx(cast model, cast position, cast rotationAxis, rotationAngle, cast scale, cast tint); }      // Draw a model with extended parameters
    @:native("DrawModelWires")                           private static function _DrawModelWires(model:RayModel, position:RayVector3, scale:Float, tint:RayColor):Void;      // Draw a model wires (with texture if set)
                                                         public static inline function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void {  _DrawModelWires(cast model, cast position, scale, cast tint); }      // Draw a model wires (with texture if set)
    @:native("DrawModelWiresEx")                         private static function _DrawModelWiresEx(model:RayModel, position:RayVector3, rotationAxis:RayVector3, rotationAngle:Float, scale:RayVector3, tint:RayColor):Void;      // Draw a model wires (with texture if set) with extended parameters
                                                         public static inline function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void {  _DrawModelWiresEx(cast model, cast position, cast rotationAxis, rotationAngle, cast scale, cast tint); }      // Draw a model wires (with texture if set) with extended parameters
    @:native("DrawBoundingBox")                          private static function _DrawBoundingBox(box:RayBoundingBox, color:RayColor):Void;      // Draw bounding box (wires)
                                                         public static inline function DrawBoundingBox(box:BoundingBox, color:Color):Void {  _DrawBoundingBox(cast box, cast color); }      // Draw bounding box (wires)
    @:native("DrawBillboard")                            private static function _DrawBillboard(camera:RayCamera3D, texture:RayTexture, position:RayVector3, size:Float, tint:RayColor):Void;      // Draw a billboard texture
                                                         public static inline function DrawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float, tint:Color):Void {  _DrawBillboard(cast camera, cast texture, cast position, size, cast tint); }      // Draw a billboard texture
    @:native("DrawBillboardRec")                         private static function _DrawBillboardRec(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3, size:RayVector2, tint:RayColor):Void;      // Draw a billboard texture defined by source
                                                         public static inline function DrawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2, tint:Color):Void {  _DrawBillboardRec(cast camera, cast texture, cast source, cast position, cast size, cast tint); }      // Draw a billboard texture defined by source
    @:native("DrawBillboardPro")                         private static function _DrawBillboardPro(camera:RayCamera3D, texture:RayTexture, source:RayRectangle, position:RayVector3, up:RayVector3, size:RayVector2, origin:RayVector2, rotation:Float, tint:RayColor):Void;      // Draw a billboard texture defined by source and rotation
                                                         public static inline function DrawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3, size:Vector2, origin:Vector2, rotation:Float, tint:Color):Void {  _DrawBillboardPro(cast camera, cast texture, cast source, cast position, cast up, cast size, cast origin, rotation, cast tint); }      // Draw a billboard texture defined by source and rotation
    @:native("UploadMesh")                               private static function _UploadMesh(mesh:cpp.RawPointer<RayMesh>, dyn:Bool):Void;      // Upload mesh vertex data in GPU and provide VAO/VBO ids
                                                         public static inline function UploadMesh(mesh:cpp.RawPointer<Mesh>, dyn:Bool):Void {  _UploadMesh(cast mesh, dyn); }      // Upload mesh vertex data in GPU and provide VAO/VBO ids
    @:native("UpdateMeshBuffer")                         private static function _UpdateMeshBuffer(mesh:RayMesh, index:Int, data:cpp.RawConstPointer<cpp.Void>, dataSize:Int, offset:Int):Void;      // Update mesh vertex data in GPU for a specific buffer index
                                                         public static inline function UpdateMeshBuffer(mesh:Mesh, index:Int, data:cpp.RawConstPointer<cpp.Void>, dataSize:Int, offset:Int):Void {  _UpdateMeshBuffer(cast mesh, index, cast data, dataSize, offset); }      // Update mesh vertex data in GPU for a specific buffer index
    @:native("UnloadMesh")                               private static function _UnloadMesh(mesh:RayMesh):Void;      // Unload mesh data from CPU and GPU
                                                         public static inline function UnloadMesh(mesh:Mesh):Void {  _UnloadMesh(cast mesh); }      // Unload mesh data from CPU and GPU
    @:native("DrawMesh")                                 private static function _DrawMesh(mesh:RayMesh, material:RayMaterial, transform:RayMatrix):Void;      // Draw a 3d mesh with material and transform
                                                         public static inline function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void {  _DrawMesh(cast mesh, cast material, cast transform); }      // Draw a 3d mesh with material and transform
    @:native("DrawMeshInstanced")                        private static function _DrawMeshInstanced(mesh:RayMesh, material:RayMaterial, transforms:cpp.RawConstPointer<RayMatrix>, instances:Int):Void;      // Draw multiple mesh instances with material and different transforms
                                                         public static inline function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:cpp.RawConstPointer<Matrix>, instances:Int):Void {  _DrawMeshInstanced(cast mesh, cast material, cast transforms, instances); }      // Draw multiple mesh instances with material and different transforms
    @:native("ExportMesh")                               private static function _ExportMesh(mesh:RayMesh, fileName:cpp.ConstCharStar):Bool;      // Export mesh data to file, returns true on success
                                                         public static inline function ExportMesh(mesh:Mesh, fileName:cpp.ConstCharStar):Bool { return _ExportMesh(cast mesh, cast fileName); }      // Export mesh data to file, returns true on success
    @:native("GetMeshBoundingBox")                       private static function _GetMeshBoundingBox(mesh:RayMesh):RayBoundingBox;      // Compute mesh bounding box limits
                                                         public static inline function GetMeshBoundingBox(mesh:Mesh):BoundingBox { return cast _GetMeshBoundingBox(cast mesh); }      // Compute mesh bounding box limits
    @:native("GenMeshTangents")                          private static function _GenMeshTangents(mesh:cpp.RawPointer<RayMesh>):Void;      // Compute mesh tangents
                                                         public static inline function GenMeshTangents(mesh:cpp.RawPointer<Mesh>):Void {  _GenMeshTangents(cast mesh); }      // Compute mesh tangents
    @:native("GenMeshBinormals")                         private static function _GenMeshBinormals(mesh:cpp.RawPointer<RayMesh>):Void;      // Compute mesh binormals
                                                         public static inline function GenMeshBinormals(mesh:cpp.RawPointer<Mesh>):Void {  _GenMeshBinormals(cast mesh); }      // Compute mesh binormals
    @:native("GenMeshPoly")                              private static function _GenMeshPoly(sides:Int, radius:Float):RayMesh;      // Generate polygonal mesh
                                                         public static inline function GenMeshPoly(sides:Int, radius:Float):Mesh { return cast _GenMeshPoly(sides, radius); }      // Generate polygonal mesh
    @:native("GenMeshPlane")                             private static function _GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):RayMesh;      // Generate plane mesh (with subdivisions)
                                                         public static inline function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh { return cast _GenMeshPlane(width, length, resX, resZ); }      // Generate plane mesh (with subdivisions)
    @:native("GenMeshCube")                              private static function _GenMeshCube(width:Float, height:Float, length:Float):RayMesh;      // Generate cuboid mesh
                                                         public static inline function GenMeshCube(width:Float, height:Float, length:Float):Mesh { return cast _GenMeshCube(width, height, length); }      // Generate cuboid mesh
    @:native("GenMeshSphere")                            private static function _GenMeshSphere(radius:Float, rings:Int, slices:Int):RayMesh;      // Generate sphere mesh (standard sphere)
                                                         public static inline function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh { return cast _GenMeshSphere(radius, rings, slices); }      // Generate sphere mesh (standard sphere)
    @:native("GenMeshHemiSphere")                        private static function _GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):RayMesh;      // Generate half-sphere mesh (no bottom cap)
                                                         public static inline function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh { return cast _GenMeshHemiSphere(radius, rings, slices); }      // Generate half-sphere mesh (no bottom cap)
    @:native("GenMeshCylinder")                          private static function _GenMeshCylinder(radius:Float, height:Float, slices:Int):RayMesh;      // Generate cylinder mesh
                                                         public static inline function GenMeshCylinder(radius:Float, height:Float, slices:Int):Mesh { return cast _GenMeshCylinder(radius, height, slices); }      // Generate cylinder mesh
    @:native("GenMeshCone")                              private static function _GenMeshCone(radius:Float, height:Float, slices:Int):RayMesh;      // Generate cone/pyramid mesh
                                                         public static inline function GenMeshCone(radius:Float, height:Float, slices:Int):Mesh { return cast _GenMeshCone(radius, height, slices); }      // Generate cone/pyramid mesh
    @:native("GenMeshTorus")                             private static function _GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):RayMesh;      // Generate torus mesh
                                                         public static inline function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh { return cast _GenMeshTorus(radius, size, radSeg, sides); }      // Generate torus mesh
    @:native("GenMeshKnot")                              private static function _GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):RayMesh;      // Generate trefoil knot mesh
                                                         public static inline function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh { return cast _GenMeshKnot(radius, size, radSeg, sides); }      // Generate trefoil knot mesh
    @:native("GenMeshHeightmap")                         private static function _GenMeshHeightmap(heightmap:RayImage, size:RayVector3):RayMesh;      // Generate heightmap mesh from image data
                                                         public static inline function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh { return cast _GenMeshHeightmap(cast heightmap, cast size); }      // Generate heightmap mesh from image data
    @:native("GenMeshCubicmap")                          private static function _GenMeshCubicmap(cubicmap:RayImage, cubeSize:RayVector3):RayMesh;      // Generate cubes-based map mesh from image data
                                                         public static inline function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh { return cast _GenMeshCubicmap(cast cubicmap, cast cubeSize); }      // Generate cubes-based map mesh from image data
    @:native("LoadMaterials")                            private static function _LoadMaterials(fileName:cpp.ConstCharStar, materialCount:cpp.RawPointer<Int>):cpp.RawPointer<RayMaterial>;      // Load materials from model file
                                                         public static inline function LoadMaterials(fileName:cpp.ConstCharStar, materialCount:cpp.RawPointer<Int>):cpp.RawPointer<Material> { return cast _LoadMaterials(cast fileName, cast materialCount); }      // Load materials from model file
    @:native("LoadMaterialDefault")                      private static function _LoadMaterialDefault():RayMaterial;      // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
                                                         public static inline function LoadMaterialDefault():Material { return cast _LoadMaterialDefault(); }      // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
    @:native("UnloadMaterial")                           private static function _UnloadMaterial(material:RayMaterial):Void;      // Unload material from GPU memory (VRAM)
                                                         public static inline function UnloadMaterial(material:Material):Void {  _UnloadMaterial(cast material); }      // Unload material from GPU memory (VRAM)
    @:native("SetMaterialTexture")                       private static function _SetMaterialTexture(material:cpp.RawPointer<RayMaterial>, mapType:Int, texture:RayTexture):Void;      // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
                                                         public static inline function SetMaterialTexture(material:cpp.RawPointer<Material>, mapType:Int, texture:Texture2D):Void {  _SetMaterialTexture(cast material, mapType, cast texture); }      // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
    @:native("SetModelMeshMaterial")                     private static function _SetModelMeshMaterial(model:cpp.RawPointer<RayModel>, meshId:Int, materialId:Int):Void;      // Set material for a mesh
                                                         public static inline function SetModelMeshMaterial(model:cpp.RawPointer<Model>, meshId:Int, materialId:Int):Void {  _SetModelMeshMaterial(cast model, meshId, materialId); }      // Set material for a mesh
    @:native("LoadModelAnimations")                      private static function _LoadModelAnimations(fileName:cpp.ConstCharStar, animCount:cpp.RawPointer<Int>):cpp.RawPointer<RayModelAnimation>;      // Load model animations from file
                                                         public static inline function LoadModelAnimations(fileName:cpp.ConstCharStar, animCount:cpp.RawPointer<Int>):cpp.RawPointer<ModelAnimation> { return cast _LoadModelAnimations(cast fileName, cast animCount); }      // Load model animations from file
    @:native("UpdateModelAnimation")                     private static function _UpdateModelAnimation(model:RayModel, anim:RayModelAnimation, frame:Int):Void;      // Update model animation pose
                                                         public static inline function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void {  _UpdateModelAnimation(cast model, cast anim, frame); }      // Update model animation pose
    @:native("UnloadModelAnimation")                     private static function _UnloadModelAnimation(anim:RayModelAnimation):Void;      // Unload animation data
                                                         public static inline function UnloadModelAnimation(anim:ModelAnimation):Void {  _UnloadModelAnimation(cast anim); }      // Unload animation data
    @:native("UnloadModelAnimations")                    private static function _UnloadModelAnimations(animations:cpp.RawPointer<RayModelAnimation>, count:Int):Void;      // Unload animation array data
                                                         public static inline function UnloadModelAnimations(animations:cpp.RawPointer<ModelAnimation>, count:Int):Void {  _UnloadModelAnimations(cast animations, count); }      // Unload animation array data
    @:native("IsModelAnimationValid")                    private static function _IsModelAnimationValid(model:RayModel, anim:RayModelAnimation):Bool;      // Check model animation skeleton match
                                                         public static inline function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool { return _IsModelAnimationValid(cast model, cast anim); }      // Check model animation skeleton match
    @:native("CheckCollisionSpheres")                    private static function _CheckCollisionSpheres(center1:RayVector3, radius1:Float, center2:RayVector3, radius2:Float):Bool;      // Check collision between two spheres
                                                         public static inline function CheckCollisionSpheres(center1:Vector3, radius1:Float, center2:Vector3, radius2:Float):Bool { return _CheckCollisionSpheres(cast center1, radius1, cast center2, radius2); }      // Check collision between two spheres
    @:native("CheckCollisionBoxes")                      private static function _CheckCollisionBoxes(box1:RayBoundingBox, box2:RayBoundingBox):Bool;      // Check collision between two bounding boxes
                                                         public static inline function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool { return _CheckCollisionBoxes(cast box1, cast box2); }      // Check collision between two bounding boxes
    @:native("CheckCollisionBoxSphere")                  private static function _CheckCollisionBoxSphere(box:RayBoundingBox, center:RayVector3, radius:Float):Bool;      // Check collision between box and sphere
                                                         public static inline function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float):Bool { return _CheckCollisionBoxSphere(cast box, cast center, radius); }      // Check collision between box and sphere
    @:native("GetRayCollisionSphere")                    private static function _GetRayCollisionSphere(ray:RayRay, center:RayVector3, radius:Float):RayRayCollision;      // Get collision info between ray and sphere
                                                         public static inline function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Float):RayCollision { return cast _GetRayCollisionSphere(cast ray, cast center, radius); }      // Get collision info between ray and sphere
    @:native("GetRayCollisionBox")                       private static function _GetRayCollisionBox(ray:RayRay, box:RayBoundingBox):RayRayCollision;      // Get collision info between ray and box
                                                         public static inline function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision { return cast _GetRayCollisionBox(cast ray, cast box); }      // Get collision info between ray and box
    @:native("GetRayCollisionMesh")                      private static function _GetRayCollisionMesh(ray:RayRay, mesh:RayMesh, transform:RayMatrix):RayRayCollision;      // Get collision info between ray and mesh
                                                         public static inline function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision { return cast _GetRayCollisionMesh(cast ray, cast mesh, cast transform); }      // Get collision info between ray and mesh
    @:native("GetRayCollisionTriangle")                  private static function _GetRayCollisionTriangle(ray:RayRay, p1:RayVector3, p2:RayVector3, p3:RayVector3):RayRayCollision;      // Get collision info between ray and triangle
                                                         public static inline function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision { return cast _GetRayCollisionTriangle(cast ray, cast p1, cast p2, cast p3); }      // Get collision info between ray and triangle
    @:native("GetRayCollisionQuad")                      private static function _GetRayCollisionQuad(ray:RayRay, p1:RayVector3, p2:RayVector3, p3:RayVector3, p4:RayVector3):RayRayCollision;      // Get collision info between ray and quad
                                                         public static inline function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision { return cast _GetRayCollisionQuad(cast ray, cast p1, cast p2, cast p3, cast p4); }      // Get collision info between ray and quad
    @:native("InitAudioDevice")                          private static function _InitAudioDevice():Void;      // Initialize audio device and context
                                                         public static inline function InitAudioDevice():Void {  _InitAudioDevice(); }      // Initialize audio device and context
    @:native("CloseAudioDevice")                         private static function _CloseAudioDevice():Void;      // Close the audio device and context
                                                         public static inline function CloseAudioDevice():Void {  _CloseAudioDevice(); }      // Close the audio device and context
    @:native("IsAudioDeviceReady")                       private static function _IsAudioDeviceReady():Bool;      // Check if audio device has been initialized successfully
                                                         public static inline function IsAudioDeviceReady():Bool { return _IsAudioDeviceReady(); }      // Check if audio device has been initialized successfully
    @:native("SetMasterVolume")                          private static function _SetMasterVolume(volume:Float):Void;      // Set master volume (listener)
                                                         public static inline function SetMasterVolume(volume:Float):Void {  _SetMasterVolume(volume); }      // Set master volume (listener)
    @:native("LoadWave")                                 private static function _LoadWave(fileName:cpp.ConstCharStar):RayWave;      // Load wave data from file
                                                         public static inline function LoadWave(fileName:cpp.ConstCharStar):Wave { return cast _LoadWave(cast fileName); }      // Load wave data from file
    @:native("LoadWaveFromMemory")                       private static function _LoadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):RayWave;      // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
                                                         public static inline function LoadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Wave { return cast _LoadWaveFromMemory(cast fileType, cast fileData, dataSize); }      // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
    @:native("LoadSound")                                private static function _LoadSound(fileName:cpp.ConstCharStar):RaySound;      // Load sound from file
                                                         public static inline function LoadSound(fileName:cpp.ConstCharStar):Sound { return cast _LoadSound(cast fileName); }      // Load sound from file
    @:native("LoadSoundFromWave")                        private static function _LoadSoundFromWave(wave:RayWave):RaySound;      // Load sound from wave data
                                                         public static inline function LoadSoundFromWave(wave:Wave):Sound { return cast _LoadSoundFromWave(cast wave); }      // Load sound from wave data
    @:native("UpdateSound")                              private static function _UpdateSound(sound:RaySound, data:cpp.RawConstPointer<cpp.Void>, sampleCount:Int):Void;      // Update sound buffer with new data
                                                         public static inline function UpdateSound(sound:Sound, data:cpp.RawConstPointer<cpp.Void>, sampleCount:Int):Void {  _UpdateSound(cast sound, cast data, sampleCount); }      // Update sound buffer with new data
    @:native("UnloadWave")                               private static function _UnloadWave(wave:RayWave):Void;      // Unload wave data
                                                         public static inline function UnloadWave(wave:Wave):Void {  _UnloadWave(cast wave); }      // Unload wave data
    @:native("UnloadSound")                              private static function _UnloadSound(sound:RaySound):Void;      // Unload sound
                                                         public static inline function UnloadSound(sound:Sound):Void {  _UnloadSound(cast sound); }      // Unload sound
    @:native("ExportWave")                               private static function _ExportWave(wave:RayWave, fileName:cpp.ConstCharStar):Bool;      // Export wave data to file, returns true on success
                                                         public static inline function ExportWave(wave:Wave, fileName:cpp.ConstCharStar):Bool { return _ExportWave(cast wave, cast fileName); }      // Export wave data to file, returns true on success
    @:native("ExportWaveAsCode")                         private static function _ExportWaveAsCode(wave:RayWave, fileName:cpp.ConstCharStar):Bool;      // Export wave sample data to code (.h), returns true on success
                                                         public static inline function ExportWaveAsCode(wave:Wave, fileName:cpp.ConstCharStar):Bool { return _ExportWaveAsCode(cast wave, cast fileName); }      // Export wave sample data to code (.h), returns true on success
    @:native("PlaySound")                                private static function _PlaySound(sound:RaySound):Void;      // Play a sound
                                                         public static inline function PlaySound(sound:Sound):Void {  _PlaySound(cast sound); }      // Play a sound
    @:native("StopSound")                                private static function _StopSound(sound:RaySound):Void;      // Stop playing a sound
                                                         public static inline function StopSound(sound:Sound):Void {  _StopSound(cast sound); }      // Stop playing a sound
    @:native("PauseSound")                               private static function _PauseSound(sound:RaySound):Void;      // Pause a sound
                                                         public static inline function PauseSound(sound:Sound):Void {  _PauseSound(cast sound); }      // Pause a sound
    @:native("ResumeSound")                              private static function _ResumeSound(sound:RaySound):Void;      // Resume a paused sound
                                                         public static inline function ResumeSound(sound:Sound):Void {  _ResumeSound(cast sound); }      // Resume a paused sound
    @:native("PlaySoundMulti")                           private static function _PlaySoundMulti(sound:RaySound):Void;      // Play a sound (using multichannel buffer pool)
                                                         public static inline function PlaySoundMulti(sound:Sound):Void {  _PlaySoundMulti(cast sound); }      // Play a sound (using multichannel buffer pool)
    @:native("StopSoundMulti")                           private static function _StopSoundMulti():Void;      // Stop any sound playing (using multichannel buffer pool)
                                                         public static inline function StopSoundMulti():Void {  _StopSoundMulti(); }      // Stop any sound playing (using multichannel buffer pool)
    @:native("GetSoundsPlaying")                         private static function _GetSoundsPlaying():Int;      // Get number of sounds playing in the multichannel
                                                         public static inline function GetSoundsPlaying():Int { return _GetSoundsPlaying(); }      // Get number of sounds playing in the multichannel
    @:native("IsSoundPlaying")                           private static function _IsSoundPlaying(sound:RaySound):Bool;      // Check if a sound is currently playing
                                                         public static inline function IsSoundPlaying(sound:Sound):Bool { return _IsSoundPlaying(cast sound); }      // Check if a sound is currently playing
    @:native("SetSoundVolume")                           private static function _SetSoundVolume(sound:RaySound, volume:Float):Void;      // Set volume for a sound (1.0 is max level)
                                                         public static inline function SetSoundVolume(sound:Sound, volume:Float):Void {  _SetSoundVolume(cast sound, volume); }      // Set volume for a sound (1.0 is max level)
    @:native("SetSoundPitch")                            private static function _SetSoundPitch(sound:RaySound, pitch:Float):Void;      // Set pitch for a sound (1.0 is base level)
                                                         public static inline function SetSoundPitch(sound:Sound, pitch:Float):Void {  _SetSoundPitch(cast sound, pitch); }      // Set pitch for a sound (1.0 is base level)
    @:native("SetSoundPan")                              private static function _SetSoundPan(sound:RaySound, pan:Float):Void;      // Set pan for a sound (0.5 is center)
                                                         public static inline function SetSoundPan(sound:Sound, pan:Float):Void {  _SetSoundPan(cast sound, pan); }      // Set pan for a sound (0.5 is center)
    @:native("WaveCopy")                                 private static function _WaveCopy(wave:RayWave):RayWave;      // Copy a wave to a new wave
                                                         public static inline function WaveCopy(wave:Wave):Wave { return cast _WaveCopy(cast wave); }      // Copy a wave to a new wave
    @:native("WaveCrop")                                 private static function _WaveCrop(wave:cpp.RawPointer<RayWave>, initSample:Int, finalSample:Int):Void;      // Crop a wave to defined samples range
                                                         public static inline function WaveCrop(wave:cpp.RawPointer<Wave>, initSample:Int, finalSample:Int):Void {  _WaveCrop(cast wave, initSample, finalSample); }      // Crop a wave to defined samples range
    @:native("WaveFormat")                               private static function _WaveFormat(wave:cpp.RawPointer<RayWave>, sampleRate:Int, sampleSize:Int, channels:Int):Void;      // Convert wave data to desired format
                                                         public static inline function WaveFormat(wave:cpp.RawPointer<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void {  _WaveFormat(cast wave, sampleRate, sampleSize, channels); }      // Convert wave data to desired format
    @:native("LoadWaveSamples")                          private static function _LoadWaveSamples(wave:RayWave):cpp.RawPointer<Float>;      // Load samples data from wave as a 32bit float data array
                                                         public static inline function LoadWaveSamples(wave:Wave):cpp.RawPointer<Float> { return cast _LoadWaveSamples(cast wave); }      // Load samples data from wave as a 32bit float data array
    @:native("UnloadWaveSamples")                        private static function _UnloadWaveSamples(samples:cpp.RawPointer<Float>):Void;      // Unload samples data loaded with LoadWaveSamples()
                                                         public static inline function UnloadWaveSamples(samples:cpp.RawPointer<Float>):Void {  _UnloadWaveSamples(cast samples); }      // Unload samples data loaded with LoadWaveSamples()
    @:native("LoadMusicStream")                          private static function _LoadMusicStream(fileName:cpp.ConstCharStar):RayMusic;      // Load music stream from file
                                                         public static inline function LoadMusicStream(fileName:cpp.ConstCharStar):Music { return cast _LoadMusicStream(cast fileName); }      // Load music stream from file
    @:native("LoadMusicStreamFromMemory")                private static function _LoadMusicStreamFromMemory(fileType:cpp.ConstCharStar, data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):RayMusic;      // Load music stream from data
                                                         public static inline function LoadMusicStreamFromMemory(fileType:cpp.ConstCharStar, data:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Music { return cast _LoadMusicStreamFromMemory(cast fileType, cast data, dataSize); }      // Load music stream from data
    @:native("UnloadMusicStream")                        private static function _UnloadMusicStream(music:RayMusic):Void;      // Unload music stream
                                                         public static inline function UnloadMusicStream(music:Music):Void {  _UnloadMusicStream(cast music); }      // Unload music stream
    @:native("PlayMusicStream")                          private static function _PlayMusicStream(music:RayMusic):Void;      // Start music playing
                                                         public static inline function PlayMusicStream(music:Music):Void {  _PlayMusicStream(cast music); }      // Start music playing
    @:native("IsMusicStreamPlaying")                     private static function _IsMusicStreamPlaying(music:RayMusic):Bool;      // Check if music is playing
                                                         public static inline function IsMusicStreamPlaying(music:Music):Bool { return _IsMusicStreamPlaying(cast music); }      // Check if music is playing
    @:native("UpdateMusicStream")                        private static function _UpdateMusicStream(music:RayMusic):Void;      // Updates buffers for music streaming
                                                         public static inline function UpdateMusicStream(music:Music):Void {  _UpdateMusicStream(cast music); }      // Updates buffers for music streaming
    @:native("StopMusicStream")                          private static function _StopMusicStream(music:RayMusic):Void;      // Stop music playing
                                                         public static inline function StopMusicStream(music:Music):Void {  _StopMusicStream(cast music); }      // Stop music playing
    @:native("PauseMusicStream")                         private static function _PauseMusicStream(music:RayMusic):Void;      // Pause music playing
                                                         public static inline function PauseMusicStream(music:Music):Void {  _PauseMusicStream(cast music); }      // Pause music playing
    @:native("ResumeMusicStream")                        private static function _ResumeMusicStream(music:RayMusic):Void;      // Resume playing paused music
                                                         public static inline function ResumeMusicStream(music:Music):Void {  _ResumeMusicStream(cast music); }      // Resume playing paused music
    @:native("SeekMusicStream")                          private static function _SeekMusicStream(music:RayMusic, position:Float):Void;      // Seek music to a position (in seconds)
                                                         public static inline function SeekMusicStream(music:Music, position:Float):Void {  _SeekMusicStream(cast music, position); }      // Seek music to a position (in seconds)
    @:native("SetMusicVolume")                           private static function _SetMusicVolume(music:RayMusic, volume:Float):Void;      // Set volume for music (1.0 is max level)
                                                         public static inline function SetMusicVolume(music:Music, volume:Float):Void {  _SetMusicVolume(cast music, volume); }      // Set volume for music (1.0 is max level)
    @:native("SetMusicPitch")                            private static function _SetMusicPitch(music:RayMusic, pitch:Float):Void;      // Set pitch for a music (1.0 is base level)
                                                         public static inline function SetMusicPitch(music:Music, pitch:Float):Void {  _SetMusicPitch(cast music, pitch); }      // Set pitch for a music (1.0 is base level)
    @:native("SetMusicPan")                              private static function _SetMusicPan(music:RayMusic, pan:Float):Void;      // Set pan for a music (0.5 is center)
                                                         public static inline function SetMusicPan(music:Music, pan:Float):Void {  _SetMusicPan(cast music, pan); }      // Set pan for a music (0.5 is center)
    @:native("GetMusicTimeLength")                       private static function _GetMusicTimeLength(music:RayMusic):Float;      // Get music time length (in seconds)
                                                         public static inline function GetMusicTimeLength(music:Music):Float { return _GetMusicTimeLength(cast music); }      // Get music time length (in seconds)
    @:native("GetMusicTimePlayed")                       private static function _GetMusicTimePlayed(music:RayMusic):Float;      // Get current music time played (in seconds)
                                                         public static inline function GetMusicTimePlayed(music:Music):Float { return _GetMusicTimePlayed(cast music); }      // Get current music time played (in seconds)
    @:native("LoadAudioStream")                          private static function _LoadAudioStream(sampleRate:Int, sampleSize:Int, channels:Int):RayAudioStream;      // Load audio stream (to stream raw audio pcm data)
                                                         public static inline function LoadAudioStream(sampleRate:Int, sampleSize:Int, channels:Int):AudioStream { return cast _LoadAudioStream(sampleRate, sampleSize, channels); }      // Load audio stream (to stream raw audio pcm data)
    @:native("UnloadAudioStream")                        private static function _UnloadAudioStream(stream:RayAudioStream):Void;      // Unload audio stream and free memory
                                                         public static inline function UnloadAudioStream(stream:AudioStream):Void {  _UnloadAudioStream(cast stream); }      // Unload audio stream and free memory
    @:native("UpdateAudioStream")                        private static function _UpdateAudioStream(stream:RayAudioStream, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void;      // Update audio stream buffers with data
                                                         public static inline function UpdateAudioStream(stream:AudioStream, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void {  _UpdateAudioStream(cast stream, cast data, frameCount); }      // Update audio stream buffers with data
    @:native("IsAudioStreamProcessed")                   private static function _IsAudioStreamProcessed(stream:RayAudioStream):Bool;      // Check if any audio stream buffers requires refill
                                                         public static inline function IsAudioStreamProcessed(stream:AudioStream):Bool { return _IsAudioStreamProcessed(cast stream); }      // Check if any audio stream buffers requires refill
    @:native("PlayAudioStream")                          private static function _PlayAudioStream(stream:RayAudioStream):Void;      // Play audio stream
                                                         public static inline function PlayAudioStream(stream:AudioStream):Void {  _PlayAudioStream(cast stream); }      // Play audio stream
    @:native("PauseAudioStream")                         private static function _PauseAudioStream(stream:RayAudioStream):Void;      // Pause audio stream
                                                         public static inline function PauseAudioStream(stream:AudioStream):Void {  _PauseAudioStream(cast stream); }      // Pause audio stream
    @:native("ResumeAudioStream")                        private static function _ResumeAudioStream(stream:RayAudioStream):Void;      // Resume audio stream
                                                         public static inline function ResumeAudioStream(stream:AudioStream):Void {  _ResumeAudioStream(cast stream); }      // Resume audio stream
    @:native("IsAudioStreamPlaying")                     private static function _IsAudioStreamPlaying(stream:RayAudioStream):Bool;      // Check if audio stream is playing
                                                         public static inline function IsAudioStreamPlaying(stream:AudioStream):Bool { return _IsAudioStreamPlaying(cast stream); }      // Check if audio stream is playing
    @:native("StopAudioStream")                          private static function _StopAudioStream(stream:RayAudioStream):Void;      // Stop audio stream
                                                         public static inline function StopAudioStream(stream:AudioStream):Void {  _StopAudioStream(cast stream); }      // Stop audio stream
    @:native("SetAudioStreamVolume")                     private static function _SetAudioStreamVolume(stream:RayAudioStream, volume:Float):Void;      // Set volume for audio stream (1.0 is max level)
                                                         public static inline function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void {  _SetAudioStreamVolume(cast stream, volume); }      // Set volume for audio stream (1.0 is max level)
    @:native("SetAudioStreamPitch")                      private static function _SetAudioStreamPitch(stream:RayAudioStream, pitch:Float):Void;      // Set pitch for audio stream (1.0 is base level)
                                                         public static inline function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void {  _SetAudioStreamPitch(cast stream, pitch); }      // Set pitch for audio stream (1.0 is base level)
    @:native("SetAudioStreamPan")                        private static function _SetAudioStreamPan(stream:RayAudioStream, pan:Float):Void;      // Set pan for audio stream (0.5 is centered)
                                                         public static inline function SetAudioStreamPan(stream:AudioStream, pan:Float):Void {  _SetAudioStreamPan(cast stream, pan); }      // Set pan for audio stream (0.5 is centered)
    @:native("SetAudioStreamBufferSizeDefault")          private static function _SetAudioStreamBufferSizeDefault(size:Int):Void;      // Default size for new audio streams
                                                         public static inline function SetAudioStreamBufferSizeDefault(size:Int):Void {  _SetAudioStreamBufferSizeDefault(size); }      // Default size for new audio streams
    @:native("SetAudioStreamCallback")                   private static function _SetAudioStreamCallback(stream:RayAudioStream, callback:AudioCallback):Void;      // Audio thread callback to request new data
                                                         public static inline function SetAudioStreamCallback(stream:AudioStream, callback:AudioCallback):Void {  _SetAudioStreamCallback(cast stream, cast callback); }      // Audio thread callback to request new data
    @:native("AttachAudioStreamProcessor")               private static function _AttachAudioStreamProcessor(stream:RayAudioStream, processor:AudioCallback):Void;      // AttachAudioStreamProcessor
                                                         public static inline function AttachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void {  _AttachAudioStreamProcessor(cast stream, cast processor); }      // AttachAudioStreamProcessor
    @:native("DetachAudioStreamProcessor")               private static function _DetachAudioStreamProcessor(stream:RayAudioStream, processor:AudioCallback):Void;      // DetachAudioStreamProcessor
                                                         public static inline function DetachAudioStreamProcessor(stream:AudioStream, processor:AudioCallback):Void {  _DetachAudioStreamProcessor(cast stream, cast processor); }      // DetachAudioStreamProcessor
}

@:include("raylib.h")
extern enum abstract ConfigFlags(Int) from Int to Int {
    @:native("FLAG_VSYNC_HINT")                          public static var VSYNC_HINT:Int;
    @:native("FLAG_FULLSCREEN_MODE")                     public static var FULLSCREEN_MODE:Int;
    @:native("FLAG_WINDOW_RESIZABLE")                    public static var WINDOW_RESIZABLE:Int;
    @:native("FLAG_WINDOW_UNDECORATED")                  public static var WINDOW_UNDECORATED:Int;
    @:native("FLAG_WINDOW_HIDDEN")                       public static var WINDOW_HIDDEN:Int;
    @:native("FLAG_WINDOW_MINIMIZED")                    public static var WINDOW_MINIMIZED:Int;
    @:native("FLAG_WINDOW_MAXIMIZED")                    public static var WINDOW_MAXIMIZED:Int;
    @:native("FLAG_WINDOW_UNFOCUSED")                    public static var WINDOW_UNFOCUSED:Int;
    @:native("FLAG_WINDOW_TOPMOST")                      public static var WINDOW_TOPMOST:Int;
    @:native("FLAG_WINDOW_ALWAYS_RUN")                   public static var WINDOW_ALWAYS_RUN:Int;
    @:native("FLAG_WINDOW_TRANSPARENT")                  public static var WINDOW_TRANSPARENT:Int;
    @:native("FLAG_WINDOW_HIGHDPI")                      public static var WINDOW_HIGHDPI:Int;
    @:native("FLAG_MSAA_4X_HINT")                        public static var MSAA_4X_HINT:Int;
    @:native("FLAG_INTERLACED_HINT")                     public static var INTERLACED_HINT:Int;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int) from Int to Int {
    @:native("LOG_ALL")                                  public static var ALL:Int;
    @:native("LOG_TRACE")                                public static var TRACE:Int;
    @:native("LOG_DEBUG")                                public static var DEBUG:Int;
    @:native("LOG_INFO")                                 public static var INFO:Int;
    @:native("LOG_WARNING")                              public static var WARNING:Int;
    @:native("LOG_ERROR")                                public static var ERROR:Int;
    @:native("LOG_FATAL")                                public static var FATAL:Int;
    @:native("LOG_NONE")                                 public static var NONE:Int;
}

@:include("raylib.h")
extern enum abstract KeyboardKey(Int) from Int to Int {
    @:native("KEY_NULL")                                 public static var NULL:Int;
    @:native("KEY_APOSTROPHE")                           public static var APOSTROPHE:Int;
    @:native("KEY_COMMA")                                public static var COMMA:Int;
    @:native("KEY_MINUS")                                public static var MINUS:Int;
    @:native("KEY_PERIOD")                               public static var PERIOD:Int;
    @:native("KEY_SLASH")                                public static var SLASH:Int;
    @:native("KEY_ZERO")                                 public static var ZERO:Int;
    @:native("KEY_ONE")                                  public static var ONE:Int;
    @:native("KEY_TWO")                                  public static var TWO:Int;
    @:native("KEY_THREE")                                public static var THREE:Int;
    @:native("KEY_FOUR")                                 public static var FOUR:Int;
    @:native("KEY_FIVE")                                 public static var FIVE:Int;
    @:native("KEY_SIX")                                  public static var SIX:Int;
    @:native("KEY_SEVEN")                                public static var SEVEN:Int;
    @:native("KEY_EIGHT")                                public static var EIGHT:Int;
    @:native("KEY_NINE")                                 public static var NINE:Int;
    @:native("KEY_SEMICOLON")                            public static var SEMICOLON:Int;
    @:native("KEY_EQUAL")                                public static var EQUAL:Int;
    @:native("KEY_A")                                    public static var A:Int;
    @:native("KEY_B")                                    public static var B:Int;
    @:native("KEY_C")                                    public static var C:Int;
    @:native("KEY_D")                                    public static var D:Int;
    @:native("KEY_E")                                    public static var E:Int;
    @:native("KEY_F")                                    public static var F:Int;
    @:native("KEY_G")                                    public static var G:Int;
    @:native("KEY_H")                                    public static var H:Int;
    @:native("KEY_I")                                    public static var I:Int;
    @:native("KEY_J")                                    public static var J:Int;
    @:native("KEY_K")                                    public static var K:Int;
    @:native("KEY_L")                                    public static var L:Int;
    @:native("KEY_M")                                    public static var M:Int;
    @:native("KEY_N")                                    public static var N:Int;
    @:native("KEY_O")                                    public static var O:Int;
    @:native("KEY_P")                                    public static var P:Int;
    @:native("KEY_Q")                                    public static var Q:Int;
    @:native("KEY_R")                                    public static var R:Int;
    @:native("KEY_S")                                    public static var S:Int;
    @:native("KEY_T")                                    public static var T:Int;
    @:native("KEY_U")                                    public static var U:Int;
    @:native("KEY_V")                                    public static var V:Int;
    @:native("KEY_W")                                    public static var W:Int;
    @:native("KEY_X")                                    public static var X:Int;
    @:native("KEY_Y")                                    public static var Y:Int;
    @:native("KEY_Z")                                    public static var Z:Int;
    @:native("KEY_LEFT_BRACKET")                         public static var LEFT_BRACKET:Int;
    @:native("KEY_BACKSLASH")                            public static var BACKSLASH:Int;
    @:native("KEY_RIGHT_BRACKET")                        public static var RIGHT_BRACKET:Int;
    @:native("KEY_GRAVE")                                public static var GRAVE:Int;
    @:native("KEY_SPACE")                                public static var SPACE:Int;
    @:native("KEY_ESCAPE")                               public static var ESCAPE:Int;
    @:native("KEY_ENTER")                                public static var ENTER:Int;
    @:native("KEY_TAB")                                  public static var TAB:Int;
    @:native("KEY_BACKSPACE")                            public static var BACKSPACE:Int;
    @:native("KEY_INSERT")                               public static var INSERT:Int;
    @:native("KEY_DELETE")                               public static var DELETE:Int;
    @:native("KEY_RIGHT")                                public static var RIGHT:Int;
    @:native("KEY_LEFT")                                 public static var LEFT:Int;
    @:native("KEY_DOWN")                                 public static var DOWN:Int;
    @:native("KEY_UP")                                   public static var UP:Int;
    @:native("KEY_PAGE_UP")                              public static var PAGE_UP:Int;
    @:native("KEY_PAGE_DOWN")                            public static var PAGE_DOWN:Int;
    @:native("KEY_HOME")                                 public static var HOME:Int;
    @:native("KEY_END")                                  public static var END:Int;
    @:native("KEY_CAPS_LOCK")                            public static var CAPS_LOCK:Int;
    @:native("KEY_SCROLL_LOCK")                          public static var SCROLL_LOCK:Int;
    @:native("KEY_NUM_LOCK")                             public static var NUM_LOCK:Int;
    @:native("KEY_PRINT_SCREEN")                         public static var PRINT_SCREEN:Int;
    @:native("KEY_PAUSE")                                public static var PAUSE:Int;
    @:native("KEY_F1")                                   public static var F1:Int;
    @:native("KEY_F2")                                   public static var F2:Int;
    @:native("KEY_F3")                                   public static var F3:Int;
    @:native("KEY_F4")                                   public static var F4:Int;
    @:native("KEY_F5")                                   public static var F5:Int;
    @:native("KEY_F6")                                   public static var F6:Int;
    @:native("KEY_F7")                                   public static var F7:Int;
    @:native("KEY_F8")                                   public static var F8:Int;
    @:native("KEY_F9")                                   public static var F9:Int;
    @:native("KEY_F10")                                  public static var F10:Int;
    @:native("KEY_F11")                                  public static var F11:Int;
    @:native("KEY_F12")                                  public static var F12:Int;
    @:native("KEY_LEFT_SHIFT")                           public static var LEFT_SHIFT:Int;
    @:native("KEY_LEFT_CONTROL")                         public static var LEFT_CONTROL:Int;
    @:native("KEY_LEFT_ALT")                             public static var LEFT_ALT:Int;
    @:native("KEY_LEFT_SUPER")                           public static var LEFT_SUPER:Int;
    @:native("KEY_RIGHT_SHIFT")                          public static var RIGHT_SHIFT:Int;
    @:native("KEY_RIGHT_CONTROL")                        public static var RIGHT_CONTROL:Int;
    @:native("KEY_RIGHT_ALT")                            public static var RIGHT_ALT:Int;
    @:native("KEY_RIGHT_SUPER")                          public static var RIGHT_SUPER:Int;
    @:native("KEY_KB_MENU")                              public static var KB_MENU:Int;
    @:native("KEY_KP_0")                                 public static var KP_0:Int;
    @:native("KEY_KP_1")                                 public static var KP_1:Int;
    @:native("KEY_KP_2")                                 public static var KP_2:Int;
    @:native("KEY_KP_3")                                 public static var KP_3:Int;
    @:native("KEY_KP_4")                                 public static var KP_4:Int;
    @:native("KEY_KP_5")                                 public static var KP_5:Int;
    @:native("KEY_KP_6")                                 public static var KP_6:Int;
    @:native("KEY_KP_7")                                 public static var KP_7:Int;
    @:native("KEY_KP_8")                                 public static var KP_8:Int;
    @:native("KEY_KP_9")                                 public static var KP_9:Int;
    @:native("KEY_KP_DECIMAL")                           public static var KP_DECIMAL:Int;
    @:native("KEY_KP_DIVIDE")                            public static var KP_DIVIDE:Int;
    @:native("KEY_KP_MULTIPLY")                          public static var KP_MULTIPLY:Int;
    @:native("KEY_KP_SUBTRACT")                          public static var KP_SUBTRACT:Int;
    @:native("KEY_KP_ADD")                               public static var KP_ADD:Int;
    @:native("KEY_KP_ENTER")                             public static var KP_ENTER:Int;
    @:native("KEY_KP_EQUAL")                             public static var KP_EQUAL:Int;
    @:native("KEY_BACK")                                 public static var BACK:Int;
    @:native("KEY_MENU")                                 public static var MENU:Int;
    @:native("KEY_VOLUME_UP")                            public static var VOLUME_UP:Int;
    @:native("KEY_VOLUME_DOWN")                          public static var VOLUME_DOWN:Int;
}

@:include("raylib.h")
extern enum abstract MouseButton(Int) from Int to Int {
    @:native("MOUSE_BUTTON_LEFT")                        public static var LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")                       public static var RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")                      public static var MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")                        public static var SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")                       public static var EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")                     public static var FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")                        public static var BACK:Int;
}

@:include("raylib.h")
extern enum abstract MouseCursor(Int) from Int to Int {
    @:native("MOUSE_CURSOR_DEFAULT")                     public static var DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")                       public static var ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")                       public static var IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")                   public static var CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")               public static var POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW")                   public static var RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS")                   public static var RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE")                 public static var RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW")                 public static var RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL")                  public static var RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED")                 public static var NOT_ALLOWED:Int;
}

@:include("raylib.h")
extern enum abstract GamepadButton(Int) from Int to Int {
    @:native("GAMEPAD_BUTTON_UNKNOWN")                   public static var UNKNOWN:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")              public static var LEFT_FACE_UP:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_RIGHT")           public static var LEFT_FACE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_DOWN")            public static var LEFT_FACE_DOWN:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_LEFT")            public static var LEFT_FACE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")             public static var RIGHT_FACE_UP:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")          public static var RIGHT_FACE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")           public static var RIGHT_FACE_DOWN:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")           public static var RIGHT_FACE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")            public static var LEFT_TRIGGER_1:Int;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")            public static var LEFT_TRIGGER_2:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")           public static var RIGHT_TRIGGER_1:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")           public static var RIGHT_TRIGGER_2:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")               public static var MIDDLE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE")                    public static var MIDDLE:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")              public static var MIDDLE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")                public static var LEFT_THUMB:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")               public static var RIGHT_THUMB:Int;
}

@:include("raylib.h")
extern enum abstract GamepadAxis(Int) from Int to Int {
    @:native("GAMEPAD_AXIS_LEFT_X")                      public static var LEFT_X:Int;
    @:native("GAMEPAD_AXIS_LEFT_Y")                      public static var LEFT_Y:Int;
    @:native("GAMEPAD_AXIS_RIGHT_X")                     public static var RIGHT_X:Int;
    @:native("GAMEPAD_AXIS_RIGHT_Y")                     public static var RIGHT_Y:Int;
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")                public static var LEFT_TRIGGER:Int;
    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")               public static var RIGHT_TRIGGER:Int;
}

@:include("raylib.h")
extern enum abstract MaterialMapIndex(Int) from Int to Int {
    @:native("MATERIAL_MAP_ALBEDO")                      public static var ALBEDO:Int;
    @:native("MATERIAL_MAP_METALNESS")                   public static var METALNESS:Int;
    @:native("MATERIAL_MAP_NORMAL")                      public static var NORMAL:Int;
    @:native("MATERIAL_MAP_ROUGHNESS")                   public static var ROUGHNESS:Int;
    @:native("MATERIAL_MAP_OCCLUSION")                   public static var OCCLUSION:Int;
    @:native("MATERIAL_MAP_EMISSION")                    public static var EMISSION:Int;
    @:native("MATERIAL_MAP_HEIGHT")                      public static var HEIGHT:Int;
    @:native("MATERIAL_MAP_CUBEMAP")                     public static var CUBEMAP:Int;
    @:native("MATERIAL_MAP_IRRADIANCE")                  public static var IRRADIANCE:Int;
    @:native("MATERIAL_MAP_PREFILTER")                   public static var PREFILTER:Int;
    @:native("MATERIAL_MAP_BRDF")                        public static var BRDF:Int;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(Int) from Int to Int {
    @:native("SHADER_LOC_VERTEX_POSITION")               public static var VERTEX_POSITION:Int;
    @:native("SHADER_LOC_VERTEX_TEXCOORD01")             public static var VERTEX_TEXCOORD01:Int;
    @:native("SHADER_LOC_VERTEX_TEXCOORD02")             public static var VERTEX_TEXCOORD02:Int;
    @:native("SHADER_LOC_VERTEX_NORMAL")                 public static var VERTEX_NORMAL:Int;
    @:native("SHADER_LOC_VERTEX_TANGENT")                public static var VERTEX_TANGENT:Int;
    @:native("SHADER_LOC_VERTEX_COLOR")                  public static var VERTEX_COLOR:Int;
    @:native("SHADER_LOC_MATRIX_MVP")                    public static var MATRIX_MVP:Int;
    @:native("SHADER_LOC_MATRIX_VIEW")                   public static var MATRIX_VIEW:Int;
    @:native("SHADER_LOC_MATRIX_PROJECTION")             public static var MATRIX_PROJECTION:Int;
    @:native("SHADER_LOC_MATRIX_MODEL")                  public static var MATRIX_MODEL:Int;
    @:native("SHADER_LOC_MATRIX_NORMAL")                 public static var MATRIX_NORMAL:Int;
    @:native("SHADER_LOC_VECTOR_VIEW")                   public static var VECTOR_VIEW:Int;
    @:native("SHADER_LOC_COLOR_DIFFUSE")                 public static var COLOR_DIFFUSE:Int;
    @:native("SHADER_LOC_COLOR_SPECULAR")                public static var COLOR_SPECULAR:Int;
    @:native("SHADER_LOC_COLOR_AMBIENT")                 public static var COLOR_AMBIENT:Int;
    @:native("SHADER_LOC_MAP_ALBEDO")                    public static var MAP_ALBEDO:Int;
    @:native("SHADER_LOC_MAP_METALNESS")                 public static var MAP_METALNESS:Int;
    @:native("SHADER_LOC_MAP_NORMAL")                    public static var MAP_NORMAL:Int;
    @:native("SHADER_LOC_MAP_ROUGHNESS")                 public static var MAP_ROUGHNESS:Int;
    @:native("SHADER_LOC_MAP_OCCLUSION")                 public static var MAP_OCCLUSION:Int;
    @:native("SHADER_LOC_MAP_EMISSION")                  public static var MAP_EMISSION:Int;
    @:native("SHADER_LOC_MAP_HEIGHT")                    public static var MAP_HEIGHT:Int;
    @:native("SHADER_LOC_MAP_CUBEMAP")                   public static var MAP_CUBEMAP:Int;
    @:native("SHADER_LOC_MAP_IRRADIANCE")                public static var MAP_IRRADIANCE:Int;
    @:native("SHADER_LOC_MAP_PREFILTER")                 public static var MAP_PREFILTER:Int;
    @:native("SHADER_LOC_MAP_BRDF")                      public static var MAP_BRDF:Int;
}

@:include("raylib.h")
extern enum abstract ShaderUniformDataType(Int) from Int to Int {
    @:native("SHADER_UNIFORM_FLOAT")                     public static var FLOAT:Int;
    @:native("SHADER_UNIFORM_VEC2")                      public static var VEC2:Int;
    @:native("SHADER_UNIFORM_VEC3")                      public static var VEC3:Int;
    @:native("SHADER_UNIFORM_VEC4")                      public static var VEC4:Int;
    @:native("SHADER_UNIFORM_INT")                       public static var INT:Int;
    @:native("SHADER_UNIFORM_IVEC2")                     public static var IVEC2:Int;
    @:native("SHADER_UNIFORM_IVEC3")                     public static var IVEC3:Int;
    @:native("SHADER_UNIFORM_IVEC4")                     public static var IVEC4:Int;
    @:native("SHADER_UNIFORM_SAMPLER2D")                 public static var SAMPLER2D:Int;
}

@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(Int) from Int to Int {
    @:native("SHADER_ATTRIB_FLOAT")                      public static var FLOAT:Int;
    @:native("SHADER_ATTRIB_VEC2")                       public static var VEC2:Int;
    @:native("SHADER_ATTRIB_VEC3")                       public static var VEC3:Int;
    @:native("SHADER_ATTRIB_VEC4")                       public static var VEC4:Int;
}

@:include("raylib.h")
extern enum abstract PixelFormat(Int) from Int to Int {
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")       public static var UNCOMPRESSED_GRAYSCALE:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")      public static var UNCOMPRESSED_GRAY_ALPHA:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")          public static var UNCOMPRESSED_R5G6B5:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")          public static var UNCOMPRESSED_R8G8B8:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")        public static var UNCOMPRESSED_R5G5B5A1:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")        public static var UNCOMPRESSED_R4G4B4A4:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")        public static var UNCOMPRESSED_R8G8B8A8:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32")             public static var UNCOMPRESSED_R32:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")       public static var UNCOMPRESSED_R32G32B32:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")    public static var UNCOMPRESSED_R32G32B32A32:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")          public static var COMPRESSED_DXT1_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")         public static var COMPRESSED_DXT1_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")         public static var COMPRESSED_DXT3_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")         public static var COMPRESSED_DXT5_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")          public static var COMPRESSED_ETC1_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")          public static var COMPRESSED_ETC2_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")     public static var COMPRESSED_ETC2_EAC_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")          public static var COMPRESSED_PVRT_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")         public static var COMPRESSED_PVRT_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")     public static var COMPRESSED_ASTC_4x4_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")     public static var COMPRESSED_ASTC_8x8_RGBA:Int;
}

@:include("raylib.h")
extern enum abstract TextureFilter(Int) from Int to Int {
    @:native("TEXTURE_FILTER_POINT")                     public static var POINT:Int;
    @:native("TEXTURE_FILTER_BILINEAR")                  public static var BILINEAR:Int;
    @:native("TEXTURE_FILTER_TRILINEAR")                 public static var TRILINEAR:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")            public static var ANISOTROPIC_4X:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")            public static var ANISOTROPIC_8X:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")           public static var ANISOTROPIC_16X:Int;
}

@:include("raylib.h")
extern enum abstract TextureWrap(Int) from Int to Int {
    @:native("TEXTURE_WRAP_REPEAT")                      public static var REPEAT:Int;
    @:native("TEXTURE_WRAP_CLAMP")                       public static var CLAMP:Int;
    @:native("TEXTURE_WRAP_MIRROR_REPEAT")               public static var MIRROR_REPEAT:Int;
    @:native("TEXTURE_WRAP_MIRROR_CLAMP")                public static var MIRROR_CLAMP:Int;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(Int) from Int to Int {
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")               public static var AUTO_DETECT:Int;
    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")             public static var LINE_VERTICAL:Int;
    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")           public static var LINE_HORIZONTAL:Int;
    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")       public static var CROSS_THREE_BY_FOUR:Int;
    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")       public static var CROSS_FOUR_BY_THREE:Int;
    @:native("CUBEMAP_LAYOUT_PANORAMA")                  public static var PANORAMA:Int;
}

@:include("raylib.h")
extern enum abstract FontType(Int) from Int to Int {
    @:native("FONT_DEFAULT")                             public static var DEFAULT:Int;
    @:native("FONT_BITMAP")                              public static var BITMAP:Int;
    @:native("FONT_SDF")                                 public static var SDF:Int;
}

@:include("raylib.h")
extern enum abstract BlendMode(Int) from Int to Int {
    @:native("BLEND_ALPHA")                              public static var ALPHA:Int;
    @:native("BLEND_ADDITIVE")                           public static var ADDITIVE:Int;
    @:native("BLEND_MULTIPLIED")                         public static var MULTIPLIED:Int;
    @:native("BLEND_ADD_COLORS")                         public static var ADD_COLORS:Int;
    @:native("BLEND_SUBTRACT_COLORS")                    public static var SUBTRACT_COLORS:Int;
    @:native("BLEND_ALPHA_PREMUL")                       public static var ALPHA_PREMUL:Int;
    @:native("BLEND_CUSTOM")                             public static var CUSTOM:Int;
}

@:include("raylib.h")
extern enum abstract Gesture(Int) from Int to Int {
    @:native("GESTURE_NONE")                             public static var NONE:Int;
    @:native("GESTURE_TAP")                              public static var TAP:Int;
    @:native("GESTURE_DOUBLETAP")                        public static var DOUBLETAP:Int;
    @:native("GESTURE_HOLD")                             public static var HOLD:Int;
    @:native("GESTURE_DRAG")                             public static var DRAG:Int;
    @:native("GESTURE_SWIPE_RIGHT")                      public static var SWIPE_RIGHT:Int;
    @:native("GESTURE_SWIPE_LEFT")                       public static var SWIPE_LEFT:Int;
    @:native("GESTURE_SWIPE_UP")                         public static var SWIPE_UP:Int;
    @:native("GESTURE_SWIPE_DOWN")                       public static var SWIPE_DOWN:Int;
    @:native("GESTURE_PINCH_IN")                         public static var PINCH_IN:Int;
    @:native("GESTURE_PINCH_OUT")                        public static var PINCH_OUT:Int;
}

@:include("raylib.h")
extern enum abstract CameraMode(Int) from Int to Int {
    @:native("CAMERA_CUSTOM")                            public static var CUSTOM:Int;
    @:native("CAMERA_FREE")                              public static var FREE:Int;
    @:native("CAMERA_ORBITAL")                           public static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")                      public static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")                      public static var THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract CameraProjection(Int) from Int to Int {
    @:native("CAMERA_PERSPECTIVE")                       public static var PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")                      public static var ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(Int) from Int to Int {
    @:native("NPATCH_NINE_PATCH")                        public static var NINE_PATCH:Int;
    @:native("NPATCH_THREE_PATCH_VERTICAL")              public static var THREE_PATCH_VERTICAL:Int;
    @:native("NPATCH_THREE_PATCH_HORIZONTAL")            public static var THREE_PATCH_HORIZONTAL:Int;
}


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
        