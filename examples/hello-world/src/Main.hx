package;

import RayLib.*;
import RayLib.Colors.*;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
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
}
