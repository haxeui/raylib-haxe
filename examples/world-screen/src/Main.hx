package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.Camera;
import RayLib.Vector2;
import RayLib.Vector3;
import RayLib.CameraProjection;
import RayLib.CameraMode;
import cpp.RawPointer;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var camera = Camera.createEmpty();
        camera.position = Vector3.create(10, 10, 10);
        camera.target = Vector3.create(0, 0, 0);
        camera.up = Vector3.create(0, 1, 0);
        camera.fovy = 45;
        camera.projection = CameraProjection.PERSPECTIVE;
        
        var cubePosition = Vector3.create(0, 0, 0);
        var cubeScreenPosition = Vector2.create(0, 0);
        
        SetCameraMode(camera, CameraMode.FREE);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            UpdateCamera(RawPointer.addressOf(camera));
            
            cubeScreenPosition = GetWorldToScreen(Vector3.create(cubePosition.x, cubePosition.y + 2.5, cubePosition.z), camera);

            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawCube(cubePosition, 2, 2, 2, RED);
                    DrawCubeWires(cubePosition, 2, 2, 2, MAROON);
                    DrawGrid(10, 1);
                EndMode3D();
                
                DrawText("Enemy: 100 / 100", Std.int(cubeScreenPosition.x - MeasureText("Enemy: 100/100", 20) / 2), Std.int(cubeScreenPosition.y), 20, BLACK);
                DrawText("Text is always on top of the cube", Std.int((screenWidth - MeasureText("Text is always on top of the cube", 20)) / 2), 25, 20, GRAY);
            EndDrawing();
        }
        
        CloseWindow();
    }
}
