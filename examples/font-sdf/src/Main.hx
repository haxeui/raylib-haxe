package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.Font;
import RayLib.FontType;
import RayLib.KeyboardKey;
import RayLib.TextureFilter;
import RayLib.Vector2;
import cpp.RawPointer;
import cpp.UInt32;

class Main {
    static inline var GLSL_VERSION:Int = 330;
    
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var msg = "Signed Distance Fields";
        
        // Loading file to memory
        var fileSize:UInt32 = 0;
        var fileData = LoadFileData("../resources/Roboto-Regular.ttf", RawPointer.addressOf(fileSize));
        
        // Default font generation from TTF font
        var fontDefault = Font.createEmpty();
        fontDefault.baseSize = 32;
        fontDefault.glyphCount = 95;
        
        // Loading font data from memory data
        // Parameters > font size: 16, no glyphs array provided (0), glyphs count: 95 (autogenerate chars array)
        fontDefault.glyphs = LoadFontData(fileData, fileSize, 16, null, 95, FontType.DEFAULT);
        // Parameters > glyphs count: 95, font size: 16, glyphs padding in image: 4 px, pack method: 0 (default)
        var atlas = GenImageFontAtlas(fontDefault.glyphs, RawPointer.addressOf(fontDefault.recs), 95, 16, 4, 0);
        fontDefault.texture = LoadTextureFromImage(atlas);
        UnloadImage(atlas);

        // SDF font generation from TTF font
        var fontSDF = Font.createEmpty();
        fontSDF.baseSize = 32;
        fontSDF.glyphCount = 95;
        // Parameters > font size: 16, no glyphs array provided (0), glyphs count: 0 (defaults to 95)
        fontSDF.glyphs = LoadFontData(fileData, fileSize, 16, null, 0, FontType.SDF);
        // Parameters > glyphs count: 95, font size: 16, glyphs padding in image: 0 px, pack method: 1 (Skyline algorythm)
        atlas = GenImageFontAtlas(fontSDF.glyphs, RawPointer.addressOf(fontSDF.recs), 95, 16, 0, 1);
        fontSDF.texture = LoadTextureFromImage(atlas);
        UnloadImage(atlas);
        
        UnloadFileData(fileData);      // Free memory from loaded file
        
        var shader = LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/sdf.fs');
        SetTextureFilter(fontSDF.texture, TextureFilter.BILINEAR);    // Required for SDF font
        
        var fontPosition = Vector2.create(40, screenHeight / 2 - 50);
        var textSize = Vector2.create(0, 0);
        var fontSize:Float = 16;
        var currentFont = 0;
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            fontSize += GetMouseWheelMove() * 8;
            
            if (fontSize < 6) fontSize = 6;
            
            if (IsKeyDown(KeyboardKey.SPACE)) currentFont = 1;
            else currentFont = 0;
            
            if (currentFont == 0) textSize = MeasureTextEx(fontDefault, msg, fontSize, 0);
            else textSize = MeasureTextEx(fontSDF, msg, fontSize, 0);
            
            fontPosition.x = GetScreenWidth() / 2 - textSize.x / 2;
            fontPosition.y = GetScreenHeight() / 2 - textSize.y / 2 + 80;
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                if (currentFont == 1) {
                    // NOTE: SDF fonts require a custom SDf shader to compute fragment color
                    BeginShaderMode(shader);    // Activate SDF font shader
                        DrawTextEx(fontSDF, msg, fontPosition, fontSize, 0, BLACK);
                    EndShaderMode();            // Activate our default shader for next drawings    
                    
                    DrawTexture(fontSDF.texture, 10, 10, BLACK);
                } else {
                    DrawTextEx(fontDefault, msg, fontPosition, fontSize, 0, BLACK);
                    DrawTexture(fontDefault.texture, 10, 10, BLACK);
                }
                
                if (currentFont == 1) DrawText("SDF!", 320, 20, 80, RED);
                else DrawText("default font", 315, 40, 30, GRAY);
                
                
                DrawText("FONT SIZE: 16.0", GetScreenWidth() - 240, 20, 20, DARKGRAY);
                DrawText(TextFormat("RENDER SIZE: %02.02f", fontSize), GetScreenWidth() - 240, 50, 20, DARKGRAY);
                DrawText("Use MOUSE WHEEL to SCALE TEXT!", GetScreenWidth() - 240, 90, 10, DARKGRAY);

                DrawText("HOLD SPACE to USE SDF FONT VERSION!", 340, GetScreenHeight() - 30, 20, MAROON);
            EndDrawing();
        }

        UnloadFont(fontDefault);    // Default font unloading
        UnloadFont(fontSDF);        // SDF font unloading

        UnloadShader(shader);       // Unload SDF shader
        
        CloseWindow();
    }
}
