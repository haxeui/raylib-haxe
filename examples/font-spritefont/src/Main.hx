package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.Vector2;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var msg1 = "THIS IS A custom SPRITE FONT...";
        var msg2 = "...and this is ANOTHER CUSTOM font...";
        var msg3 = "...and a THIRD one! GREAT! :D";
        
        var font1 = LoadFont("../resources/custom_mecha.png");
        var font2 = LoadFont("../resources/custom_alagard.png");
        var font3 = LoadFont("../resources/custom_jupiter_crash.png");
        
        var fontPosition1 = Vector2.create(screenWidth / 2 - MeasureTextEx(font1, msg1, font1.baseSize, -3).x / 2,
                                           screenHeight / 2 - font1.baseSize / 2 - 80);
        var fontPosition2 = Vector2.create(screenWidth / 2 - MeasureTextEx(font2, msg2, font2.baseSize, -2).x / 2,
                                           screenHeight / 2 - font2.baseSize / 2 - 10);
        var fontPosition3 = Vector2.create(screenWidth / 2 - MeasureTextEx(font3, msg3, font3.baseSize, 2).x / 2,
                                           screenHeight / 2 - font3.baseSize / 2 + 50);
        
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                DrawTextEx(font1, msg1, fontPosition1, font1.baseSize, -3, WHITE);
                DrawTextEx(font2, msg2, fontPosition2, font2.baseSize, -2, WHITE);
                DrawTextEx(font3, msg3, fontPosition3, font3.baseSize, 2, WHITE);
            EndDrawing();
        }
        
        UnloadFont(font1);
        UnloadFont(font2);
        UnloadFont(font3);
        
        CloseWindow();
    }
}
