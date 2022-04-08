package;

import RayLib.*;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.Colors.*;
import RayLib.MaterialMapIndex;
import RayLib.Vector3;
import RayLib.CameraProjection;
import RayLib.Texture2D;
import RayLib.Vector2;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var camera = Camera.create(Vector3.create(18, 18, 18), Vector3.create(0, 0, 0), Vector3.create(0, 1, 0), 45, 0);

        var image = LoadImage("../resources/heightmap.png");
        var texture = LoadTextureFromImage(image); 
        
        var mesh = GenMeshHeightmap(image, Vector3.create(16, 8, 16));
        var model = LoadModelFromMesh(mesh); 
        
        model.materials[0].maps[MaterialMapIndex.ALBEDO].texture = texture;
        var mapPosition = Vector3.create( -8, 0, -8);
        
        UnloadImage(image);
        
        SetCameraMode(camera, CameraMode.ORBITAL);
        
        SetTargetFPS(60); 
        
        while (!WindowShouldClose()) {
            UpdateCamera(camera);
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawModel(model, mapPosition, 1, RED);
                    DrawGrid(20, 1);
                EndMode3D();
                
                DrawTexture(texture, screenWidth - texture.width - 20, 20, WHITE);
                DrawRectangleLines(screenWidth - texture.width - 20, 20, texture.width, texture.height, GREEN);
                
                DrawFPS(10, 10);
            EndDrawing();
        }
        
        UnloadTexture(texture);
        UnloadModel(model);
        
        CloseWindow();
    }
}
