[![Build](https://github.com/haxeui/raylib-haxe/actions/workflows/build.yml/badge.svg)](https://github.com/haxeui/raylib-haxe/actions/workflows/build.yml)

# raylib-haxe

Haxe bindings for RayLib

<p align="center">
  <img src="https://raw.githubusercontent.com/haxeui/raylib-haxe/main/.github/images/screen.png"/>
</p>

# installation

```
haxelib install raylib-haxe
```

# basic usage

Simpy create a build file (`build.hxml`) with the following:

```
-lib raylib-haxe
-cp src
-cpp bin
-main Main
```

create a `src` directory with a `Main.hx` containing the following:

```haxe
package;

import RayLib.*;
import RayLib.Colors.*;

class Main {
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            BeginDrawing();
                ClearBackground(RAYWHITE);
                DrawText("Hello World", Std.int((screenWidth - MeasureText("Hello World", 20)) / 2), 25, 20, GRAY);
            EndDrawing();
        }
        
        CloseWindow();
    }
}
```

To build run `haxe build.hxml` from the project root, this will create a `Main` executable (for OSX, Linux or Windows) in a `bin` folder.

Refer to [hello world example](https://github.com/haxeui/raylib-haxe/tree/main/examples/hello-world) for a working example. 



# advanced usage

Refer to [examples](https://github.com/haxeui/raylib-haxe/tree/main/examples) for more advanced usage

```haxe
package;

import RayLib.*;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.Colors.*;
import RayLib.MaterialMapIndex;
import RayLib.Vector3;
import cpp.RawPointer;
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
            UpdateCamera(RawPointer.addressOf(camera));
            
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

```
