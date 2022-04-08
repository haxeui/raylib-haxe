package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.KeyboardKey;
import RayLib.Vector2;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var msg = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHI\nJKLMNOPQRSTUVWXYZ[]^_`abcdefghijklmn\nopqrstuvwxyz{|}~¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\nÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\nøùúûüýþÿ";
        
        var fontBm = LoadFont("../resources/pixantiqua.fnt");
        var fontTtf = LoadFontEx("../resources/pixantiqua.ttf", 32, null, 250);
        var useTtf = false;
        var position = Vector2.create(20, 100);
        
        SetTargetFPS(60);
        
        
        while (!WindowShouldClose()) {
            if (IsKeyDown(KeyboardKey.SPACE)) useTtf = true;
            else useTtf = false;
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("Hold SPACE to use TTF generated font", 20, 20, 20, LIGHTGRAY);
                
                if (!useTtf) {
                    DrawTextEx(fontBm, msg, position, fontBm.baseSize, 2, MAROON);
                    DrawText("Using BMFont (Angelcode) imported", 20, GetScreenHeight() - 30, 20, GRAY);
                } else {
                    DrawTextEx(fontTtf, msg, position, fontTtf.baseSize, 2, LIME);
                    DrawText("Using TTF font generated", 20, GetScreenHeight() - 30, 20, GRAY);
                }
            EndDrawing();
        }
        
        UnloadFont(fontBm);
        UnloadFont(fontTtf);
        
        CloseWindow();
    }
}
