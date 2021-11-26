package;

import RayLib.*;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.Colors.*;
import RayLib.MaterialMapIndex;
import RayLib.Vector2;
import RayLib.Vector3;
import cpp.RawPointer;
import RayLib.CameraProjection;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var camera = Camera.create(Vector3.create(16, 14, 16), Vector3.create(0, 0, 0), Vector3.create(0, 1, 0), 45, 0);
        
        var image = LoadImage("../resources/cubicmap.png");
        var cubicmap = LoadTextureFromImage(image);
        
        var mesh = GenMeshCubicmap(image, Vector3.create(1, 1, 1));
        var model = LoadModelFromMesh(mesh);
        
        var texture = LoadTexture("../resources/cubicmap_atlas.png");
        model.materials[0].maps[MaterialMapIndex.ALBEDO].texture = texture;
        
        var mapPosition = Vector3.create(-16, 0, -8);
        
        UnloadImage(image);
        
        SetCameraMode(camera, CameraMode.ORBITAL);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            UpdateCamera(RawPointer.addressOf(camera));

            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawModel(model, mapPosition, 1, WHITE);
                EndMode3D();    
                
                DrawTextureEx(cubicmap, Vector2.create(screenWidth - cubicmap.width * 4 - 20, 20), 0, 4, WHITE);
                DrawRectangleLines(screenWidth - cubicmap.width * 4 - 20, 20, cubicmap.width * 4, cubicmap.height * 4, GREEN);
                
                DrawText("cubicmap image used to", 658, 90, 10, GRAY);
                DrawText("generate map 3d model", 658, 104, 10, GRAY);
                
                DrawFPS(10, 10);
                
            EndDrawing();
        }
        
        UnloadTexture(cubicmap);
        UnloadTexture(texture);
        UnloadModel(model);

        CloseWindow();
    }
}
