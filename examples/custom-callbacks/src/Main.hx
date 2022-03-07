package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.LoadFileTextCallback;
import RayLib.TraceLogCallback;
import RayLib.VaList;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        SetTraceLogCallback(TraceLogCallback.fromStatic(traceLogCallback));
        SetLoadFileTextCallback(LoadFileTextCallback.fromStatic(loadFileTextCallback));
        LoadFileText("somefile");
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("Hello World", Std.int((screenWidth - MeasureText("Hello World", 20)) / 2), 25, 20, GRAY);
            EndDrawing();
        }
        
        CloseWindow();
    }
    
    static function traceLogCallback(level:Int, text:cpp.ConstCharStar, args:VaList) {
        trace("in custom logging function, text: '" + text + "' (level: " + level + ")");

        // this is just for demonstration purposes: it looks for tokens in the text and guesses thier types to extract from the arg list
        var t = new String(text);
        var p = t.indexOf("%");
        while (p != -1) {
            var type = t.substr(p + 1, 1);
            if (type == "i") {
                trace("    int param: " + VaList.int(args));
            } else if (type == "s") {
                trace("    string param: " + VaList.string(args));
            } else {
                trace("    float param: " + VaList.float(args));
            }
            p = t.indexOf("%", p + 1);
        }
    }
    
    static function loadFileTextCallback(filename:cpp.ConstCharStar):cpp.ConstCharStar {
        trace("in custom load file text function: '" + filename + "'");
        return "dummy";
    }
}
