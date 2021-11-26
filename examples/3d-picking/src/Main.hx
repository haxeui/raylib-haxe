package;

import RayLib.*;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.CameraProjection;
import RayLib.Colors.*;
import RayLib.MouseButton;
import RayLib.Ray;
import RayLib.RayCollision;
import RayLib.Vector3;
import RayLib.BoundingBox;
import cpp.RawPointer;
import RayLib.Vector2;

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
        
        var cubePosition = Vector3.create(0, 1, 0);
        var cubeSize = Vector3.create(2, 2, 2);
        
        var ray = Ray.createEmpty();
        var collision = RayCollision.createEmpty();
        
        SetCameraMode(camera, CameraMode.FREE);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            UpdateCamera(RawPointer.addressOf(camera));
            
            if (IsMouseButtonPressed(MouseButton.LEFT)) {
                if (!collision.hit) {
                    ray = GetMouseRay(GetMousePosition(), camera);
                    
                    collision = GetRayCollisionBox(ray,
                        BoundingBox.create(
                            Vector3.create(cubePosition.x - cubeSize.x / 2, cubePosition.y - cubeSize.y / 2, cubePosition.z - cubeSize.z / 2),
                            Vector3.create(cubePosition.x + cubeSize.x / 2, cubePosition.y + cubeSize.y / 2, cubePosition.z + cubeSize.z / 2)
                        )
                    );    
                } else {
                    collision.hit = false;
                }
            }
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    if (collision.hit) {
                        DrawCube(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, RED);
                        DrawCubeWires(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, MAROON);
                        
                        DrawCubeWires(cubePosition, cubeSize.x + 0.2, cubeSize.y + 0.2, cubeSize.z + 0.2, GREEN);
                    } else {
                        DrawCube(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, GRAY);
                        DrawCubeWires(cubePosition, cubeSize.x, cubeSize.y, cubeSize.z, DARKGRAY);
                    }
                    
                    DrawRay(ray, MAROON);
                    DrawGrid(10, 1);
                EndMode3D();
                
                DrawText("Try selecting the box with mouse!", 240, 10, 20, DARKGRAY);
                if (collision.hit) {
                    DrawText("BOX SELECTED", Std.int((screenWidth - MeasureText("BOX SELECTED", 30)) / 2), Std.int(screenHeight * 0.1), 30, GREEN);
                }
                DrawFPS(10, 10);
                
            EndDrawing();
            
            /*
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
            */
        }
        
        CloseWindow();
    }
}
