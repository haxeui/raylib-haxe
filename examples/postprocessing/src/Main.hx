package;

import RayLib.*;
import RayLib.Camera;
import RayLib.CameraMode;
import RayLib.Colors.*;
import RayLib.KeyboardKey;
import RayLib.MaterialMapIndex;
import RayLib.Rectangle;
import RayLib.Shader;
import RayLib.Vector2;
import RayLib.Vector3;
import RayLib.CameraProjection;

@:unreflective
@:struct
typedef ShaderInfo = {
    var shader:Shader;
    var name:String;
}

class Main {
    static inline var GLSL_VERSION:Int = 330;
    
    static function main() {
        var screenWidth:Int = 800;
        var screenHeight:Int = 450;
        
        InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");
        
        var camera = Camera.create(Vector3.create(2, 3, 2), Vector3.create(0, 1, 0), Vector3.create(0, 1, 0), 45, 0);
        
        var model = LoadModel("../resources/models/church.obj");
        var texture = LoadTexture("../resources/models/church_diffuse.png");
        model.materials[0].maps[MaterialMapIndex.ALBEDO].texture = texture;
        
        var position = Vector3.create(0, 0, 0);
        
        var shaders:Array<ShaderInfo> = [];
        shaders.push({ name: "GRAYSCALE",       shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/grayscale.fs') });
        shaders.push({ name: "POSTERIZATION",   shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/posterization.fs') });
        shaders.push({ name: "DREAM_VISION",    shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/dream_vision.fs') });
        shaders.push({ name: "PIXELIZER",       shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/pixelizer.fs') });
        shaders.push({ name: "CROSS_HATCHING",  shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/cross_hatching.fs') });
        shaders.push({ name: "CROSS_STITCHING", shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/cross_stitching.fs') });
        shaders.push({ name: "PREDATOR_VIEW",   shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/predator.fs') });
        shaders.push({ name: "SCANLINES",       shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/scanlines.fs') });
        shaders.push({ name: "FISHEYE",         shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/fisheye.fs') });
        shaders.push({ name: "SOBEL",           shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/sobel.fs') });
        shaders.push({ name: "BLOOM",           shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/bloom.fs') });
        shaders.push({ name: "BLUR",            shader: LoadShader(null, '../resources/shaders/glsl${GLSL_VERSION}/blur.fs') });
        
        var currentShader = 0;
        
        var target = LoadRenderTexture(screenWidth, screenHeight);
        
        SetCameraMode(camera, CameraMode.ORBITAL);
        
        SetTargetFPS(60);
        
        while (!WindowShouldClose()) {
            UpdateCamera(camera);
            
            if (IsKeyPressed(KeyboardKey.RIGHT)) currentShader++;
            else if (IsKeyPressed(KeyboardKey.LEFT)) currentShader--;
            
            if (currentShader >= shaders.length) currentShader = 0;
            else if (currentShader < 0) currentShader = shaders.length - 1;
            
            BeginTextureMode(target);
                ClearBackground(RAYWHITE);
                
                BeginMode3D(camera);
                    DrawModel(model, position, 0.1, WHITE);
                    DrawGrid(10, 1);
                EndMode3D();    
            EndTextureMode();
            
            BeginDrawing();
                ClearBackground(RAYWHITE);
                
                BeginShaderMode(shaders[currentShader].shader);
                    DrawTextureRec(target.texture, Rectangle.create(0, 0, target.texture.width, -target.texture.height), Vector2.create(0, 0), WHITE);
                EndShaderMode();
                
                DrawRectangle(0, 9, 580, 30, Fade(LIGHTGRAY, 0.7));
                
                DrawText("(c) Church 3D model by Alberto Cano", screenWidth - 200, screenHeight - 20, 10, GRAY);
                DrawText("CURRENT POSTPRO SHADER:", 10, 15, 20, BLACK);
                var name:String = shaders[currentShader].name;
                DrawText(name, 330, 15, 20, RED);
                DrawText("< >", 540, 10, 30, DARKBLUE);
                DrawFPS(700, 15);
            EndDrawing();
        }
        
        for (shader in shaders) {
            UnloadShader(shader.shader);
        }
        
        UnloadTexture(texture);
        UnloadModel(model);
        UnloadRenderTexture(target);
        
        CloseWindow();
    }
}
