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
        
        SetCameraMode(camera, CameraMode.FREE);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            UpdateCamera(RawPointer.addressOf(camera));
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawCube(cubePosition, 2, 2, 2, RED);
                    DrawCubeWires(cubePosition, 2, 2, 2, MAROON);
                    DrawGrid(10, 1);
                EndMode3D();
                
                DrawRectangle( 10, 10, 320, 133, Fade(SKYBLUE, 0.5));
                DrawRectangleLines( 10, 10, 320, 133, BLUE);

                DrawText("Free camera default controls:", 20, 20, 10, BLACK);
                DrawText("- Mouse Wheel to Zoom in-out", 40, 40, 10, DARKGRAY);
                DrawText("- Mouse Wheel Pressed to Pan", 40, 60, 10, DARKGRAY);
                DrawText("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, DARKGRAY);
                DrawText("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, DARKGRAY);
                DrawText("- Z to zoom to (0, 0, 0)", 40, 120, 10, DARKGRAY);
            
            EndDrawing();
        }
        
        CloseWindow();
    }
}
