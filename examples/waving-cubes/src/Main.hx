package;

import RayLib.*;
import RayLib.Camera3D;
import RayLib.CameraProjection;
import RayLib.Colors.*;
import RayLib.Vector3;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.MaterialMapIndex;
import RayLib.Vector2;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var camera = Camera3D.createEmpty();
        camera.position = Vector3.create(30, 20, 30);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 70;
        camera.projection = CameraProjection.PERSPECTIVE;
        
        var numBlocks = 15;
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            var time = GetTime();
            
            var scale = (2 + Math.sin(time)) * 0.7;
            
            var cameraTime = time * 0.3;
            camera.position.x = Math.cos(cameraTime) * 40;
            camera.position.z = Math.sin(cameraTime) * 40;
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawGrid(10, 5);
                    
                    for (x in 0...numBlocks) {
                        for (y in 0...numBlocks) {
                            for (z in 0...numBlocks) {
                                var blockScale = (x + y + z) / 30;
                                var scatter = Math.sin(blockScale * 20 + (time * 4));
                                
                                var cubePos = Vector3.create(
                                    (x - numBlocks / 2) * (scale * 3) + scatter,
                                    (y - numBlocks / 2) * (scale * 2) + scatter,
                                    (z - numBlocks / 2) * (scale * 3) + scatter
                                );
                                
                                var cubeColor = ColorFromHSV((((x + y + z) * 18) % 360), 0.75, 0.9);
                                
                                var cubeSize = (2.4 - scale) * blockScale;
                                
                                DrawCube(cubePos, cubeSize, cubeSize, cubeSize, cubeColor);
                            }
                        }
                    }
                    
                EndMode3D();
                
                DrawFPS(10, 10);
            EndDrawing();
        }
        
        CloseWindow();
    }
}
