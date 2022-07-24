package;

import RayLib.*;
import RayLib.Color;
import RayLib.Colors.*;
import RayLib.Font;
import RayLib.Vector2;
import RayLib.TextureFilter;
import RayLib.Vector2Ref;

@:unreflective
@:structInit
class FontInfo {
    public var font:Font;
    public var message:String;
    public var spacing:Int;
    public var position:Vector2Ref;
    public var color:Color;
    public var correction:Int;
}

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        //SetTextureFilter(GetFontDefault().texture, TextureFilter.BILINEAR);
        
        var fonts = new Array<FontInfo>();
        fonts.push({ font: LoadFont("../resources/alagard.png"),        message: "ALAGARD FONT designed by Hewett Tsoi",                spacing: 2, position: Vector2.createEmpty(), color: MAROON,     correction: 0 });
        fonts.push({ font: LoadFont("../resources/pixelplay.png"),      message: "PIXELPLAY FONT designed by Aleksander Shevchuk",      spacing: 4, position: Vector2.createEmpty(), color: ORANGE,     correction: 0 });
        fonts.push({ font: LoadFont("../resources/mecha.png"),          message: "MECHA FONT designed by Captain Falcon",               spacing: 8, position: Vector2.createEmpty(), color: DARKGREEN,  correction: 0 });
        fonts.push({ font: LoadFont("../resources/setback.png"),        message: "SETBACK FONT designed by Brian Kent (AEnigma)",       spacing: 4, position: Vector2.createEmpty(), color: DARKBLUE,   correction: 8 });
        fonts.push({ font: LoadFont("../resources/romulus.png"),        message: "ROMULUS FONT designed by Hewett Tsoi",                spacing: 3, position: Vector2.createEmpty(), color: DARKPURPLE, correction: 2 });
        fonts.push({ font: LoadFont("../resources/pixantiqua.png"),     message: "PIXANTIQUA FONT designed by Gerhard Grossmann",       spacing: 4, position: Vector2.createEmpty(), color: LIME,       correction: 0 });
        fonts.push({ font: LoadFont("../resources/alpha_beta.png"),     message: "ALPHA_BETA FONT designed by Brian Kent (AEnigma)",    spacing: 4, position: Vector2.createEmpty(), color: GOLD,       correction: 0 });
        fonts.push({ font: LoadFont("../resources/jupiter_crash.png"),  message: "JUPITER_CRASH FONT designed by Brian Kent (AEnigma)", spacing: 1, position: Vector2.createEmpty(), color: RED,        correction: -8 });
        
        var i = 0;
        for (info in fonts) {
            trace(i, info.font.baseSize);
            info.position.x = (screenWidth / 2) - (MeasureTextEx(info.font, info.message, info.font.baseSize * 2, info.spacing).x / 2);
            info.position.y = (60 + info.font.baseSize + 45 * i) + info.correction;
            i++;
        }

        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("free fonts included with raylib", 250, 20, 15, DARKGRAY);
                DrawText("free fonts included with raylib", 250, 40, 20, DARKGRAY);
                //DrawLine(220, 50, 590, 50, DARKGRAY);
                
                for (info in fonts) {
                    DrawTextEx(info.font, info.message, info.position, info.font.baseSize, info.spacing, info.color);
                }
            EndDrawing();
        }
        
        for (info in fonts) {
            UnloadFont(info.font);
        }
        
        CloseWindow();
    }
}
