package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.Image;
import RayLib.PixelFormat;
import cpp.NativeArray;
import haxe.io.Bytes;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        // basic texture
        var image = GenImageColor(100, 100, RED);
        var texture = LoadTextureFromImage(image);
        UnloadImage(image);
        
        // texture from pixel array
        var pixelArray:Array<Int> = [];
        for (y in 0...100) {
            for (x in 0...100) {
                pixelArray.push(0xFFFF00FF);
            }
        }
        var pixelArrayData = NativeArray.address(pixelArray, 0);
        var image2 = Image.create(pixelArrayData.rawCast(), 100, 100, 1, PixelFormat.UNCOMPRESSED_R8G8B8A8);
        var texture2 = LoadTextureFromImage(image2);
        //UnloadImage(image2);
        
        // texture from bytes
        var pixelBytes = Bytes.alloc(100 * 100 * 4);
        var n = 0;
        for (y in 0...100) {
            for (x in 0...100) {
                pixelBytes.set(n++, 0x00);
                pixelBytes.set(n++, 0xFF);
                pixelBytes.set(n++, 0xFF);
                pixelBytes.set(n++, 0xFF);
            }
        }
        var pixelBytesData = NativeArray.address(pixelBytes.getData(), 0);
        var image3 = Image.create(pixelBytesData.rawCast(), 100, 100, 1, PixelFormat.UNCOMPRESSED_R8G8B8A8);
        var texture3 = LoadTextureFromImage(image3);
        //UnloadImage(image3);
        

        // another texture from bytes, which we'll update using UpdateTexture
        var pixelBytes2 = Bytes.alloc(100 * 100 * 4);
        var n = 0;
        for (y in 0...100) {
            for (x in 0...100) {
                pixelBytes2.set(n++, Std.random(0xFF));
                pixelBytes2.set(n++, Std.random(0xFF));
                pixelBytes2.set(n++, Std.random(0xFF));
                pixelBytes2.set(n++, 0xFF);
            }
        }
        var pixelBytesData2 = NativeArray.address(pixelBytes2.getData(), 0);
        var image4 = Image.create(pixelBytesData2.rawCast(), 100, 100, 1, PixelFormat.UNCOMPRESSED_R8G8B8A8);
        var texture4 = LoadTextureFromImage(image4);
        //UnloadImage(image3);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                // lets update the text by creating random bytes
                var pixelBytes = Bytes.alloc(100 * 100 * 4);
                var n = 0;
                for (y in 0...100) {
                    for (x in 0...100) {
                        pixelBytes.set(n++, Std.random(0xFF));
                        pixelBytes.set(n++, Std.random(0xFF));
                        pixelBytes.set(n++, Std.random(0xFF));
                        pixelBytes.set(n++, 0xFF);
                    }
                }
                var pixelBytesData = NativeArray.address(pixelBytes.getData(), 0);
                UpdateTexture(texture4, pixelBytesData.rawCast());
                
                DrawTexture(texture, 10, 10, WHITE);
                DrawTexture(texture2, 120, 10, WHITE);
                DrawTexture(texture3, 230, 10, WHITE);
                DrawTexture(texture4, 340, 10, WHITE);
            EndDrawing();
        }
        
        CloseWindow();
    }
}
