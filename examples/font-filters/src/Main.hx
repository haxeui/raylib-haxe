package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.KeyboardKey;
import RayLib.TextureFilter;
import RayLib.Vector2;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var msg = "Loaded Font";
        
        var font = LoadFontEx("../resources/KAISG.ttf", 96, null, 0);
        GenTextureMipmaps(font.texture);
        
        var fontSize:Float = font.baseSize;
        var fontPosition = Vector2.create(40, screenHeight / 2 - 80);
        var textSize = Vector2.create(0, 0);
        
        SetTextureFilter(font.texture, TextureFilter.BILINEAR);
        var currentFontFilter = 1;
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            fontSize += GetMouseWheelMove() * 4;
            
            if (IsKeyPressed(KeyboardKey.ONE)) {
                SetTextureFilter(font.texture, TextureFilter.POINT);
                currentFontFilter = 0;
            } else if (IsKeyPressed(KeyboardKey.TWO)) {
                SetTextureFilter(font.texture, TextureFilter.BILINEAR);
                currentFontFilter = 1;
            } else if (IsKeyPressed(KeyboardKey.THREE)) {
                SetTextureFilter(font.texture, TextureFilter.TRILINEAR);
                currentFontFilter = 2;
            }
            
            textSize = MeasureTextEx(font, msg, fontSize, 0);
            
            
            if (IsKeyDown(KeyboardKey.LEFT)) fontPosition.x -= 10;
            else if (IsKeyDown(KeyboardKey.RIGHT)) fontPosition.x += 10;
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                DrawText("Use mouse wheel to change font size", 20, 20, 10, GRAY);
                DrawText("Use KEY_RIGHT and KEY_LEFT to move text", 20, 40, 10, GRAY);
                DrawText("Use 1, 2, 3 to change texture filter", 20, 60, 10, GRAY);
                
                DrawTextEx(font, msg, fontPosition, fontSize, 0, BLACK);
                
                DrawRectangle(0, screenHeight - 80, screenWidth, 80, LIGHTGRAY);
                DrawText(TextFormat("Font size: %02.02f", fontSize), 20, screenHeight - 50, 10, DARKGRAY);
                DrawText(TextFormat("Text size: [%02.02f, %02.02f]", textSize.x, textSize.y), 20, screenHeight - 30, 10, DARKGRAY);
                DrawText("CURRENT TEXTURE FILTER:", 250, 400, 20, GRAY);
                
                if (currentFontFilter == 0) DrawText("POINT", 570, 400, 20, BLACK);
                else if (currentFontFilter == 1) DrawText("BILINEAR", 570, 400, 20, BLACK);
                else if (currentFontFilter == 2) DrawText("TRILINEAR", 570, 400, 20, BLACK);
            EndDrawing();
        }
        
        CloseWindow();
    }
}
