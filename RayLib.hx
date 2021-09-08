package;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:buildXml("<include name='${haxelib:raylib-haxe}/Build.xml'/>")
@:include("raylib.h")
extern class RayLib {
    // Window-related functions
    @:native("InitWindow")                  public static function InitWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void;
    @:native("WindowShouldClose")           public static function WindowShouldClose():Bool;
    @:native("CloseWindow")                 public static function CloseWindow():Bool;
    @:native("IsWindowReady")               public static function IsWindowReady():Bool;
    @:native("IsWindowFullscreen")          public static function IsWindowFullscreen():Bool;
    @:native("IsWindowHidden")              public static function IsWindowHidden():Bool;
    @:native("IsWindowMinimized")           public static function IsWindowMinimized():Bool;
    @:native("IsWindowMaximized")           public static function IsWindowMaximized():Bool;
    @:native("IsWindowFocused")             public static function IsWindowFocused():Bool;
    @:native("IsWindowResized")             public static function IsWindowResized():Bool;
    @:native("IsWindowState")               public static function IsWindowState(flags:Int):Bool;
    @:native("SetWindowState")              public static function SetWindowState(flags:Int):Void;
    @:native("ClearWindowState")            public static function ClearWindowState(flags:Int):Void;
    @:native("ToggleFullscreen")            public static function ToggleFullscreen():Void;
    @:native("MaximizeWindow")              public static function MaximizeWindow():Void;
    @:native("MinimizeWindow")              public static function MinimizeWindow():Void;
    @:native("RestoreWindow")               public static function RestoreWindow():Void;
    // SetWindowIcon
    @:native("SetWindowTitle")              public static function SetWindowTitle(title:cpp.ConstCharStar):Void;
    @:native("SetWindowPosition")           public static function SetWindowPosition(x:Int, y:Int):Void;
    @:native("SetWindowMonitor")            public static function SetWindowMonitor(monitor:Int):Void;
    @:native("SetWindowMinSize")            public static function SetWindowMinSize(x:Int, y:Int):Void;
    @:native("SetWindowSize")               public static function SetWindowSize(x:Int, y:Int):Void;
    @:native("GetWindowHandle")             public static function GetWindowHandle(x:Int, y:Int):cpp.RawPointer<cpp.Void>;
    @:native("GetScreenWidth")              public static function GetScreenWidth():Int;
    @:native("GetScreenHeight")             public static function GetScreenHeight():Int;
    @:native("GetMonitorCount")             public static function GetMonitorCount():Int;
    @:native("GetCurrentMonitor")           public static function GetCurrentMonitor():Int;
    @:native("GetMonitorPosition")          public static function GetMonitorPosition():Vector2;
    @:native("GetMonitorWidth")             public static function GetMonitorWidth(monitor:Int):Int;
    @:native("GetMonitorHeight")            public static function GetMonitorHeight(monitor:Int):Int;
    @:native("GetMonitorPhysicalWidth")     public static function GetMonitorPhysicalWidth(monitor:Int):Int;
    @:native("GetMonitorPhysicalHeight")    public static function GetMonitorPhysicalHeight(monitor:Int):Int;
    @:native("GetMonitorRefreshRate")       public static function GetMonitorRefreshRate(monitor:Int):Int;
    @:native("GetWindowPosition")           public static function GetWindowPosition():Vector2;
    @:native("GetWindowScaleDPI")           public static function GetWindowScaleDPI():Vector2;
    @:native("GetMonitorName")              public static function GetMonitorName(monitor:Int):cpp.ConstCharStar;
    @:native("SetClipboardText")            public static function SetClipboardText(text:cpp.ConstCharStar):Void;
    @:native("GetClipboardText")            public static function GetClipboardText():cpp.ConstCharStar;
    
    
    // Custom frame control functions
    // InitTimer
    // WaitTime
    // SwapScreenBuffer
    // PollInputEvents
    
    // Cursor-related functions
    // ShowCursor
    // HideCursor
    // IsCursorHidden
    // EnableCursor
    // DisableCursor
    // IsCursorOnScreen
    
    // Drawing-related functions
    @:native("ClearBackground")             public static function ClearBackground(color:Color):Void;
    @:native("BeginDrawing")                public static function BeginDrawing():Void;
    @:native("EndDrawing")                  public static function EndDrawing():Void;
    // BeginMode2D
    // EndMode2D
    @:native("BeginMode3D")                 public static function BeginMode3D(camera:Camera3D):Void;
    @:native("EndMode3D")                   public static function EndMode3D():Void;
    @:native("BeginTextureMode")            public static function BeginTextureMode(target:RenderTexture2D):Void;
    @:native("EndTextureMode")              public static function EndTextureMode():Void;
    @:native("BeginShaderMode")             public static function BeginShaderMode(shader:Shader):Void;
    @:native("EndShaderMode")               public static function EndShaderMode():Void;
    // BeginBlendMode
    // EndBlendMode
    @:native("BeginScissorMode")            public static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("EndScissorMode")              public static function EndScissorMode():Void;
    // BeginVrStereoMode
    // EndVrStereoMode
    
    // VR stereo config functions for VR simulator
    // LoadVrStereoConfig
    // UnloadVrStereoConfig
    
    // Shader management functions
    @:native("LoadShader")                  public static function LoadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):Shader;
    // LoadShaderFromMemory
    // GetShaderLocation
    // GetShaderLocationAttrib
    // SetShaderValue
    // SetShaderValueV
    // SetShaderValueMatrix
    // SetShaderValueTexture
    @:native("UnloadShader")                public static function UnloadShader(shader:Shader):Void;
    
    // Screen-space-related functions
    @:native("GetMouseRay")                 public static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;
    // GetCameraMatrix
    // GetCameraMatrix2D
    @:native("GetWorldToScreen")            public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    // GetWorldToScreenEx
    // GetWorldToScreen2D
    // GetScreenToWorld2D
    
    // Timing-related functions
    @:native("SetTargetFPS")                public static function SetTargetFPS(fps:Int):Void;
    @:native("GetFPS")                      public static function GetFPS():Int;
    @:native("GetFrameTime")                public static function GetFrameTime():Float;
    @:native("GetTime")                     public static function GetTime():Float;
    
    // Misc. functions
    // GetRandomValue
    // TakeScreenshot
    // SetConfigFlags
    
    @:native("TraceLog")                    public static function TraceLog(logLevel:Int, text:cpp.ConstCharStar):Void;
    @:native("SetTraceLogLevel")            public static function SetTraceLogLevel(logLevel:Int):Void;
    // MemAlloc
    // MemRealloc
    // MemFree
    
    // Set custom callbacks
    // SetTraceLogCallback
    // SetLoadFileDataCallback
    // SetSaveFileDataCallback
    // SetLoadFileTextCallback
    // SetSaveFileTextCallback
    
    // Files management functions
    // LoadFileData
    // UnloadFileData
    // SaveFileData
    // LoadFileText
    // UnloadFileText
    // SaveFileText
    // FileExists
    // DirectoryExists
    // IsFileExtension
    // GetFileExtension
    // GetFileName
    // GetFileNameWithoutExt
    // GetDirectoryPath
    // GetPrevDirectoryPath
    // GetWorkingDirectory
    // GetDirectoryFiles
    // ClearDirectoryFiles
    // ChangeDirectory
    // IsFileDropped
    // GetDroppedFiles
    // ClearDroppedFiles
    // GetFileModTime
    
    // CompressData
    // DecompressData
    
    // Persistent storage management
    // SaveStorageValue
    // LoadStorageValue
    
    // OpenURL
    
    // Input-related functions: keyboard
    @:native("IsKeyPressed")                public static function IsKeyPressed(key:KeyboardKey):Bool;
    @:native("IsKeyDown")                   public static function IsKeyDown(key:KeyboardKey):Bool;
    @:native("IsKeyReleased")               public static function IsKeyReleased(key:KeyboardKey):Bool;
    @:native("SetExitKey")                  public static function SetExitKey(key:KeyboardKey):Void;
    @:native("GetKeyPressed")               public static function GetKeyPressed():Int;
    @:native("GetCharPressed")              public static function GetCharPressed():Int;
    
    // Input-related functions: gamepads
    // IsGamepadAvailable
    // IsGamepadName
    // GetGamepadName
    // IsGamepadButtonPressed
    // IsGamepadButtonDown
    // IsGamepadButtonReleased
    // IsGamepadButtonUp
    // GetGamepadButtonPressed
    // GetGamepadAxisCount
    // GetGamepadAxisMovement
    // SetGamepadMappings
    
    // Input-related functions: mouse
    @:native("IsMouseButtonPressed")        public static function IsMouseButtonPressed(button:MouseButton):Bool;
    @:native("IsMouseButtonDown")           public static function IsMouseButtonDown(button:MouseButton):Bool;
    @:native("IsMouseButtonReleased")       public static function IsMouseButtonReleased(button:MouseButton):Bool;
    @:native("IsMouseButtonUp")             public static function IsMouseButtonUp(button:MouseButton):Bool;
    @:native("GetMouseX")                   public static function GetMouseX():Int;
    @:native("GetMouseY")                   public static function GetMouseY():Int;
    @:native("GetMousePosition")            public static function GetMousePosition():Vector2;
    @:native("GetMouseDelta")               public static function GetMouseDelta():Vector2;
    @:native("SetMousePosition")            public static function SetMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset")              public static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("SetMouseScale")               public static function SetMouseScale(offsetX:Float, offsetY:Float):Void;
    @:native("GetMouseWheelMove")           public static function GetMouseWheelMove():Float;
    @:native("SetMouseCursor")              public static function SetMouseCursor(cursor:MouseCursor):Void;
    
    // Input-related functions: touch
    @:native("GetTouchX")                   public static function GetTouchX():Int;
    @:native("GetTouchY")                   public static function GetTouchY():Int;
    @:native("GetTouchPosition")            public static function GetTouchPosition(index:Int):Vector2;
    
    // SetGesturesEnabled
    // IsGestureDetected
    // GetGestureDetected
    // GetTouchPointsCount
    // GetGestureHoldDuration
    // GetGestureDragVector
    // GetGestureDragAngle
    // GetGesturePinchVector
    // GetGesturePinchAngle
    
    // Camera System Functions (Module: camera)
    @:native("SetCameraMode")               public static function SetCameraMode(camera:Camera, mode:CameraMode):Void;
    @:native("UpdateCamera")                public static function UpdateCamera(camera:cpp.RawPointer<Camera>):Void;
    // SetCameraPanControl
    // SetCameraAltControl
    // SetCameraSmoothZoomControl
    // SetCameraMoveControls
    
    // Basic Shapes Drawing Functions (Module: shapes)
    // SetShapesTexture
    // DrawPixel
    // DrawPixelV
    @:native("DrawLine")                    public static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;
    // DrawLineV
    // DrawLineEx
    // DrawLineBezier
    // DrawLineBezierQuad
    // DrawLineStrip
    @:native("DrawCircle")                  public static function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;
    // DrawCircleSector
    // DrawCircleSectorLines
    // DrawCircleGradient
    // DrawCircleV
    // DrawCircleLines
    // DrawEllipse
    // DrawEllipseLines
    // DrawRing
    // DrawRingLines
    @:native("DrawRectangle")               public static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    // DrawRectangleV
    // DrawRectangleRec
    // DrawRectanglePro
    @:native("DrawRectangleGradientV")      public static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    @:native("DrawRectangleGradientH")      public static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;
    // DrawRectangleGradientEx
    @:native("DrawRectangleLines")          public static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;
    // DrawRectangleLinesEx
    @:native("DrawRectangleRounded")        public static function DrawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;
    @:native("DrawRectangleRoundedLines")   public static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Float, color:Color):Void;
    // DrawTriangle
    // DrawTriangleLines
    // DrawTriangleFan
    // DrawTriangleStrip
    // DrawPoly
    // DrawPolyLines
    // DrawPolyLinesEx
    
    // Basic shapes collision detection functions
    // CheckCollisionRecs
    // CheckCollisionCircles
    // CheckCollisionCircleRec
    // CheckCollisionPointRec
    // CheckCollisionPointCircle
    // CheckCollisionPointTriangle
    // CheckCollisionLines
    // GetCollisionRec
    
    // Image loading functions
    @:native("LoadImage")                   public static function LoadImage(fileName:cpp.ConstCharStar):Image;
    // LoadImageRaw
    // LoadImageAnim
    @:native("LoadImageFromMemory")         public static function LoadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.Pointer<cpp.UInt8>, dataSize:Int):Image;
    @:native("UnloadImage")                 public static function UnloadImage(image:Image):Void;
    // ExportImage
    // ExportImageAsCode
    
    // Image generation functions
    // GenImageColor
    // GenImageGradientV
    // GenImageGradientH
    // GenImageGradientRadial
    // GenImageChecked
    // GenImageWhiteNoise
    // GenImagePerlinNoise
    // GenImageCellular
    
    // Image manipulation functions
    // ImageCopy
    // ImageFromImage
    // ImageText
    // ImageTextEx
    // ImageFormat
    // ImageToPOT
    // ImageCrop
    // ImageAlphaCrop
    // ImageAlphaClear
    // ImageAlphaMask
    // ImageAlphaPremultiply
    // ImageResize
    // ImageResizeNN
    // ImageResizeCanvas
    // ImageMipmaps
    // ImageDither
    // ImageFlipVertical
    // ImageFlipHorizontal
    // ImageRotateCW
    // ImageRotateCCW
    // ImageColorTint
    // ImageColorInvert
    // ImageColorGrayscale
    // ImageColorContrast
    // ImageColorBrightness
    // ImageColorReplace
    // LoadImageColors
    // LoadImagePalette
    // UnloadImageColors
    // UnloadImagePalette
    // GetImageAlphaBorder
    
    // Image drawing functions
    // ImageClearBackground
    // ImageDrawPixel
    // ImageDrawPixelV
    // ImageDrawLine
    // ImageDrawLineV
    // ImageDrawCircle
    // ImageDrawCircleV
    // ImageDrawRectangle
    // ImageDrawRectangleV
    // ImageDrawRectangleRec
    // ImageDrawRectangleLines
    // ImageDraw
    // ImageDrawText
    // ImageDrawTextEx
    
    // Texture loading functions
    @:native("LoadTexture")                 public static function LoadTexture(fileName:cpp.ConstCharStar):Texture2D;
    @:native("LoadTextureFromImage")        public static function LoadTextureFromImage(image:Image):Texture2D;
    // LoadTextureFromImage
    // LoadTextureCubemap
    @:native("LoadRenderTexture")           public static function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;
    @:native("UnloadTexture")               public static function UnloadTexture(texture:Texture2D):Void;
    @:native("UnloadRenderTexture")         public static function UnloadRenderTexture(target:RenderTexture2D):Void;
    // UpdateTexture
    // UpdateTextureRec
    // GetTextureData
    // GetScreenData
    
    // Texture configuration functions
    // GenTextureMipmaps
    // SetTextureFilter
    // SetTextureWrap
    
    // Texture drawing functions
    @:native("DrawTexture")                 public static function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;
    // DrawTextureV
    @:native("DrawTextureEx")               public static function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;
    @:native("DrawTextureRec")              public static function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;
    // DrawTextureQuad
    // DrawTextureTiled
    // DrawTexturePro
    // DrawTextureNPatch
    // DrawTexturePoly
    
    // Color/pixel related functions
    @:native("Fade")                        public static function Fade(color:Color, alpha:Float):Color;
    @:native("ColorToInt")                  public static function ColorToInt(color:Color):Int;
    @:native("ColorNormalize")              public static function ColorNormalize(color:Color):Vector4;
    @:native("ColorFromNormalized")         public static function ColorFromNormalized(normalized:Vector4):Color;
    @:native("ColorToHSV")                  public static function ColorToHSV(color:Color):Vector3;
    @:native("ColorFromHSV")                public static function ColorFromHSV(hue:Float, saturation:Float, value:Float):Color;
    @:native("ColorAlpha")                  public static function ColorAlpha(color:Color, alpha:Float):Color;
    @:native("ColorAlphaBlend")             public static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;
    @:native("GetColor")                    public static function GetColor(hexValue:Int):Color;
    @:native("GetPixelColor")               public static function GetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):Color;
    @:native("SetPixelColor")               public static function SetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, color:Color, format:Int):Void;
    @:native("GetPixelDataSize")            public static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;

    // Font loading/unloading functions
    @:native("GetFontDefault")              public static function GetFontDefault():Font;
    @:native("LoadFont")                    public static function LoadFont(fileName:cpp.ConstCharStar):Font;
    // LoadFontEx
    // LoadFontFromImage
    // LoadFontFromMemory
    // LoadFontData
    // GenImageFontAtlas
    // UnloadFontData
    @:native("UnloadFont")                  public static function UnloadFont(font:Font):Void;
    
    // Text drawing functions
    @:native("DrawFPS")                     public static function DrawFPS(x:Int, y:Int):Void;
    @:native("DrawText")                    public static function DrawText(text:cpp.ConstCharStar, x:Int, y:Int, fontSize:Int, color:Color):Void;
    @:native("DrawTextEx")                  public static function DrawTextEx(font:Font, text:cpp.ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;
    @:native("DrawTextRec")                 public static function DrawTextRec(font:Font, text:cpp.ConstCharStar, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color):Void;
    @:native("DrawTextRecEx")               public static function DrawTextRecEx(font:Font, text:cpp.ConstCharStar, rec:Rectangle, fontSize:Float, spacing:Float, wordWrap:Bool, tint:Color, selectStart:Int, selectEnd:Int, selectTint:Color, selectBackTint:Color):Void;
    // DrawTextCodepoint
    
    // Text misc. functions
    @:native("MeasureText")                 public static function MeasureText(text:cpp.ConstCharStar, fontSize:Int):Int;
    @:native("MeasureTextEx")               public static function MeasureTextEx(font:Font, text:cpp.ConstCharStar, fontSize:Float, spacing:Float):Vector2;
    // GetGlyphIndex
    
    // Text strings management functions (no utf8 strings, only byte chars)
    // TextCopy
    // TextIsEqual
    // TextLength
    // TextFormat
    // TextSubtext
    // TextReplace
    // TextInsert
    // TextJoin
    // TextSplit
    // TextAppend
    // TextFindIndex
    // TextToUpper
    // TextToLower
    // TextToPascal
    // TextToInteger
    // TextToUtf8
    
    // UTF8 text strings management functions
    // GetCodepoints
    // GetCodepointsCount
    // GetNextCodepoint
    // CodepointToUtf8
    
    // Basic geometric 3D shapes drawing functions
    // DrawLine3D
    // DrawPoint3D
    // DrawCircle3D
    // DrawTriangle3D
    // DrawTriangleStrip3D
    @:native("DrawCube")                public static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    // DrawCubeV
    @:native("DrawCubeWires")           public static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;
    // DrawCubeWiresV
    // DrawCubeTexture
    // DrawSphere
    // DrawSphereEx
    // DrawSphereWires
    // DrawCylinder
    // DrawCylinderWires
    // DrawPlane
    @:native("DrawRay")                 public static function DrawRay(ray:Ray, color:Color):Void;
    @:native("DrawGrid")                public static function DrawGrid(slices:Int, spacing:Int):Void;
    
    // Model loading/unloading functions
    @:native("LoadModel")               public static function LoadModel(fileName:cpp.ConstCharStar):Model;
    @:native("LoadModelFromMesh")       public static function LoadModelFromMesh(mesh:Mesh):Model;
    @:native("UnloadModel")             public static function UnloadModel(model:Model):Void;
    // UnloadModelKeepMeshes
    
    // Mesh loading/unloading functions
    // UploadMesh
    // UpdateMeshBuffer
    // DrawMesh
    // DrawMeshInstanced
    // UnloadMesh
    // ExportMesh
    
    // Material loading/unloading functions
    // LoadMaterials
    // LoadMaterialDefault
    // UnloadMaterial
    // SetMaterialTexture
    // SetModelMeshMaterial
    
    // Model animations loading/unloading functions
    // LoadModelAnimations
    // UpdateModelAnimation
    // UnloadModelAnimation
    // UnloadModelAnimations
    // IsModelAnimationValid
    
    // Mesh generation functions
    // GenMeshPoly
    // GenMeshPlane
    // GenMeshCube
    // GenMeshSphere
    // GenMeshHemiSphere
    // GenMeshCylinder
    // GenMeshTorus
    // GenMeshKnot
    @:native("GenMeshHeightmap")        public static function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh;
    @:native("GenMeshCubicmap")         public static function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh;
    
    // Mesh manipulation functions
    // GetMeshBoundingBox
    // GenMeshTangents
    // GenMeshBinormals
    
    // Model drawing functions
    @:native("DrawModel")               public static function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;
    // DrawModelEx
    // DrawModelWires
    // DrawModelWiresEx
    // DrawBoundingBox
    // DrawBillboard
    // DrawBillboardRec
    // DrawBillboardPro
    
    // Collision detection functions
    // CheckCollisionSpheres
    // CheckCollisionBoxes
    // CheckCollisionBoxSphere
    // GetRayCollisionSphere
    @:native("GetRayCollisionBox")      public static function GetRayCollisionBox(ray:Ray, boundingBox:BoundingBox):RayCollision;
    // GetRayCollisionModel
    // GetRayCollisionMesh
    // GetRayCollisionTriangle
    // GetRayCollisionQuad
    
    // Audio device management functions
    // InitAudioDevice
    // CloseAudioDevice
    // IsAudioDeviceReady
    // SetMasterVolume
    
    // Wave/Sound loading/unloading functions
    // LoadWave
    // LoadWaveFromMemory
    // LoadSound
    // LoadSoundFromWave
    // UpdateSound
    // UnloadWave
    // UnloadSound
    // ExportWave
    // ExportWaveAsCode
    
    // Wave/Sound management functions
    // PlaySound
    // StopSound
    // PauseSound
    // ResumeSound
    // PlaySoundMulti
    // StopSoundMulti
    // GetSoundsPlaying
    // IsSoundPlaying
    // SetSoundVolume
    // SetSoundPitch
    // WaveFormat
    // WaveCopy
    // WaveCrop
    // LoadWaveSamples
    // UnloadWaveSamples
    
    // Music management functions
    // LoadMusicStream
    // LoadMusicStreamFromMemory
    // UnloadMusicStream
    // PlayMusicStream
    // IsMusicStreamPlaying
    // UpdateMusicStream
    // StopMusicStream
    // PauseMusicStream
    // ResumeMusicStream
    // SetMusicVolume
    // SetMusicPitch
    // GetMusicTimeLength
    // GetMusicTimePlayed
    
    // AudioStream management functions
    // LoadAudioStream
    // UnloadAudioStream
    // UpdateAudioStream
    // IsAudioStreamProcessed
    // PlayAudioStream
    // PauseAudioStream
    // ResumeAudioStream
    // IsAudioStreamPlaying
    // StopAudioStream
    // SetAudioStreamVolume
    // SetAudioStreamPitch
    // SetAudioStreamBufferSizeDefault
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Color")
extern class Color {
    var r:Int;
    var g:Int;
    var b:Int;
    var a:Int;
    
    public static inline function create(r:Int, g:Int, b:Int, a:Int):Color {
        return untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Rectangle")
extern class Rectangle {
    var x:Float;
    var y:Float;
    var width:Float;
    var height:Float;
    
    public static inline function create(x:Float, y:Float, width:Float, height:Float):Rectangle {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, width, height);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2 {
    var x:Float;
    var y:Float;
    
    public static inline function create(x:Float, y:Float):Vector2 {
        return untyped __cpp__("{ (float){0}, (float){1} }", x, y);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern class Vector3 {
    var x:Float;
    var y:Float;
    var z:Float;
    
    public static inline function create(x:Float, y:Float, z:Float):Vector3 {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern class Vector4 {
    var x:Float;
    var y:Float;
    var z:Float;
    var w:Float;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D {
    var position:Vector3;
    var target:Vector3;
    var up:Vector3;
    var fovy:Float;
    var projection:CameraProjection;

    public static inline function create(postion:Vector3, target:Vector3, up:Vector3, fovy:Float, projection:CameraProjection):Camera {
        return untyped __cpp__("{ {0}, {1}, {2}, {3}, {4} }", postion, target, up, fovy, projection);
    }
    public static inline function createEmpty():Camera {
        return untyped __cpp__("{ 0 }");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef Camera = Camera3D;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern class Colors {
    @:native("LIGHTGRAY")   public static var LIGHTGRAY:Color;
    @:native("GRAY")        public static var GRAY:Color;
    @:native("DARKGRAY")    public static var DARKGRAY:Color;
    @:native("YELLOW")      public static var YELLOW:Color;
    @:native("GOLD")        public static var GOLD:Color;
    @:native("ORANGE")      public static var ORANGE:Color;
    @:native("PINK")        public static var PINK:Color;
    @:native("RED")         public static var RED:Color;
    @:native("MAROON")      public static var MAROON:Color;
    @:native("GREEN")       public static var GREEN:Color;
    @:native("LIME")        public static var LIME:Color;
    @:native("DARKGREEN")   public static var DARKGREEN:Color;
    @:native("SKYBLUE")     public static var SKYBLUE:Color;
    @:native("BLUE")        public static var BLUE:Color;
    @:native("DARKBLUE")    public static var DARKBLUE:Color;
    @:native("PURPLE")      public static var PURPLE:Color;
    @:native("VIOLET")      public static var VIOLET:Color;
    @:native("DARKPURPLE")  public static var DARKPURPLE:Color;
    @:native("BEIGE")       public static var BEIGE:Color;
    @:native("BROWN")       public static var BROWN:Color;
    @:native("DARKBROWN")   public static var DARKBROWN:Color;
    
    @:native("WHITE")       public static var WHITE:Color;
    @:native("BLACK")       public static var BLACK:Color;
    @:native("BLANK")       public static var BLANK:Color;
    @:native("MAGENTA")     public static var MAGENTA:Color;
    @:native("RAYWHITE")    public static var RAYWHITE:Color;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract MouseButton(Int) from Int to Int {
    @:native("MOUSE_BUTTON_LEFT")       public static var LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")      public static var RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")     public static var MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")       public static var SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")      public static var EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")    public static var FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")       public static var BACK:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract MouseCursor(Int) from Int to Int {
    @:native("MOUSE_CURSOR_DEFAULT")        public static var DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")          public static var ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")          public static var IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")      public static var CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")  public static var POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW")      public static var RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS")      public static var RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE")    public static var RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW")    public static var RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL")     public static var RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED")    public static var NOT_ALLOWED:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract CameraProjection(Int) from Int to Int {
    @:native("CAMERA_PERSPECTIVE")      public static var PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")     public static var ORTHOGRAPHIC:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract KeyboardKey(Int) from Int to Int {
    @:native("KEY_NULL")                public static var NULL:Int;
    
    // Alphanumeric keys
    @:native("KEY_APOSTROPHE")          public static var APOSTROPHE:Int;
    @:native("KEY_COMMA")               public static var COMMA:Int;
    @:native("KEY_MINUS")               public static var MINUS:Int;
    @:native("KEY_PERIOD")              public static var PERIOD:Int;
    @:native("KEY_SLASH")               public static var SLASH:Int;
    @:native("KEY_ZERO")                public static var ZERO:Int;
    @:native("KEY_ONE")                 public static var ONE:Int;
    @:native("KEY_TWO")                 public static var TWO:Int;
    @:native("KEY_THREE")               public static var THREE:Int;
    @:native("KEY_FOUR")                public static var FOUR:Int;
    @:native("KEY_FIVE")                public static var FIVE:Int;
    @:native("KEY_SIX")                 public static var SIX:Int;
    @:native("KEY_SEVEN")               public static var SEVEN:Int;
    @:native("KEY_EIGHT")               public static var EIGHT:Int;
    @:native("KEY_NINE")                public static var NINE:Int;
    @:native("KEY_SEMICOLON")           public static var SEMICOLON:Int;
    @:native("KEY_EQUAL")               public static var EQUAL:Int;
    @:native("KEY_A")                   public static var A:Int;
    @:native("KEY_B")                   public static var B:Int;
    @:native("KEY_C")                   public static var C:Int;
    @:native("KEY_D")                   public static var D:Int;
    @:native("KEY_E")                   public static var E:Int;
    @:native("KEY_F")                   public static var F:Int;
    @:native("KEY_G")                   public static var G:Int;
    @:native("KEY_H")                   public static var H:Int;
    @:native("KEY_I")                   public static var I:Int;
    @:native("KEY_J")                   public static var J:Int;
    @:native("KEY_K")                   public static var K:Int;
    @:native("KEY_L")                   public static var L:Int;
    @:native("KEY_M")                   public static var M:Int;
    @:native("KEY_N")                   public static var N:Int;
    @:native("KEY_O")                   public static var O:Int;
    @:native("KEY_P")                   public static var P:Int;
    @:native("KEY_Q")                   public static var Q:Int;
    @:native("KEY_R")                   public static var R:Int;
    @:native("KEY_S")                   public static var S:Int;
    @:native("KEY_T")                   public static var T:Int;
    @:native("KEY_U")                   public static var U:Int;
    @:native("KEY_V")                   public static var V:Int;
    @:native("KEY_W")                   public static var W:Int;
    @:native("KEY_X")                   public static var X:Int;
    @:native("KEY_Y")                   public static var Y:Int;
    @:native("KEY_Z")                   public static var Z:Int;
    
    // Function keys
    @:native("KEY_SPACE")               public static var SPACE:Int;
    @:native("KEY_ESCAPE")              public static var ESCAPE:Int;
    @:native("KEY_ENTER")               public static var ENTER:Int;
    @:native("KEY_TAB")                 public static var TAB:Int;
    @:native("KEY_BACKSPACE")           public static var BACKSPACE:Int;
    @:native("KEY_INSERT")              public static var INSERT:Int;
    @:native("KEY_DELETE")              public static var DELETE:Int;
    @:native("KEY_RIGHT")               public static var RIGHT:Int;
    @:native("KEY_LEFT")                public static var LEFT:Int;
    @:native("KEY_DOWN")                public static var DOWN:Int;
    @:native("KEY_UP")                  public static var UP:Int;
    @:native("KEY_PAGE_UP")             public static var PAGE_UP:Int;
    @:native("KEY_PAGE_DOWN")           public static var PAGE_DOWN:Int;
    @:native("KEY_HOME")                public static var HOME:Int;
    @:native("KEY_END")                 public static var END:Int;
    @:native("KEY_CAPS_LOCK")           public static var CAPS_LOCK:Int;
    @:native("KEY_SCROLL_LOCK")         public static var SCROLL_LOCK:Int;
    @:native("KEY_NUM_LOCK")            public static var NUM_LOCK:Int;
    @:native("KEY_PRINT_SCREEN")        public static var PRINT_SCREEN:Int;
    @:native("KEY_PAUSE")               public static var PAUSE:Int;
    @:native("KEY_F1")                  public static var F1:Int;
    @:native("KEY_F2")                  public static var F2:Int;
    @:native("KEY_F3")                  public static var F3:Int;
    @:native("KEY_F4")                  public static var F4:Int;
    @:native("KEY_F5")                  public static var F5:Int;
    @:native("KEY_F6")                  public static var F6:Int;
    @:native("KEY_F7")                  public static var F7:Int;
    @:native("KEY_F8")                  public static var F8:Int;
    @:native("KEY_F9")                  public static var F9:Int;
    @:native("KEY_F10")                 public static var F10:Int;
    @:native("KEY_F11")                 public static var F11:Int;
    @:native("KEY_F12")                 public static var F12:Int;
    @:native("KEY_LEFT_SHIFT")          public static var LEFT_SHIFT:Int;
    @:native("KEY_LEFT_CONTROL")        public static var LEFT_CONTROL:Int;
    @:native("KEY_LEFT_ALT")            public static var LEFT_ALT:Int;
    @:native("KEY_LEFT_SUPER")          public static var LEFT_SUPER:Int;
    @:native("KEY_RIGHT_SHIFT")         public static var RIGHT_SHIFT:Int;
    @:native("KEY_RIGHT_CONTROL")       public static var RIGHT_CONTROL:Int;
    @:native("KEY_RIGHT_ALT")           public static var RIGHT_ALT:Int;
    @:native("KEY_RIGHT_SUPER")         public static var RIGHT_SUPER:Int;
    @:native("KEY_KB_MENU")             public static var KB_MENU:Int;
    @:native("KEY_LEFT_BRACKET")        public static var LEFT_BRACKET:Int;
    @:native("KEY_BACKSLASH")           public static var BACKSLASH:Int;
    @:native("KEY_RIGHT_BRACKET")       public static var RIGHT_BRACKET:Int;
    @:native("KEY_GRAVE")               public static var GRAVE:Int;
    
    // Keypad keys
    @:native("KEY_KP_0")                public static var KP_0:Int;
    @:native("KEY_KP_1")                public static var KP_1:Int;
    @:native("KEY_KP_2")                public static var KP_2:Int;
    @:native("KEY_KP_3")                public static var KP_3:Int;
    @:native("KEY_KP_4")                public static var KP_4:Int;
    @:native("KEY_KP_5")                public static var KP_5:Int;
    @:native("KEY_KP_6")                public static var KP_6:Int;
    @:native("KEY_KP_7")                public static var KP_7:Int;
    @:native("KEY_KP_8")                public static var KP_8:Int;
    @:native("KEY_KP_9")                public static var KP_9:Int;
    @:native("KEY_KP_DECIMAL")          public static var KP_DECIMAL:Int;
    @:native("KEY_KP_DIVIDE")           public static var KP_DIVIDE:Int;
    @:native("KEY_KP_MULTIPLY")         public static var KP_MULTIPLY:Int;
    @:native("KEY_KP_SUBTRACT")         public static var KP_SUBTRACT:Int;
    @:native("KEY_KP_ADD")              public static var KP_ADD:Int;
    @:native("KEY_KP_ENTER")            public static var KP_ENTER:Int;
    @:native("KEY_KP_EQUAL")            public static var KP_EQUAL:Int;
    
    // Android key buttons
    @:native("KEY_BACK")                public static var BACK:Int;
    @:native("KEY_MENU")                public static var MENU:Int;
    @:native("KEY_VOLUME_UP")           public static var VOLUME_UP:Int;
    @:native("KEY_VOLUME_DOWN")         public static var VOLUME_DOWN:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract CameraMode(Int) from Int to Int {
    @:native("CAMERA_CUSTOM")           public static var CUSTOM:Int;
    @:native("CAMERA_FREE")             public static var FREE:Int;
    @:native("CAMERA_ORBITAL")          public static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")     public static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")     public static var THIRD_PERSON:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract MaterialMapIndex(Int) from Int to Int {
    @:native("MATERIAL_MAP_ALBEDO")     public static var ALBEDO:Int;
    @:native("MATERIAL_MAP_METALNESS")  public static var METALNESS:Int;
    @:native("MATERIAL_MAP_NORMAL")     public static var NORMAL:Int;
    @:native("MATERIAL_MAP_ROUGHNESS")  public static var ROUGHNESS:Int;
    @:native("MATERIAL_MAP_OCCLUSION")  public static var OCCLUSION:Int;
    @:native("MATERIAL_MAP_EMISSION")   public static var EMISSION:Int;
    @:native("MATERIAL_MAP_HEIGHT")     public static var HEIGHT:Int;
    @:native("MATERIAL_MAP_CUBEMAP")    public static var CUBEMAP:Int;
    @:native("MATERIAL_MAP_IRRADIANCE") public static var IRRADIANCE:Int;
    @:native("MATERIAL_MAP_PREFILTER")  public static var PREFILTER:Int;
    @:native("MATERIAL_MAP_BRDG")       public static var BRDG:Int;
    @:native("MATERIAL_MAP_DIFFUSE")    public static var DIFFUSE:Int;
    @:native("MATERIAL_MAP_SPECULAR")   public static var SPECULAR:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Texture")
@:structAccess
@:unreflective
extern class Texture {
    var id:Int;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var pixelformat:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef Texture2D = Texture;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef TextureCubemap = Texture;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Image")
@:structAccess
extern class Image {
    var data:cpp.RawPointer<cpp.Void>;
    var width:Int;
    var height:Int;
    var mipmaps:Int;
    var format:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("CharInfo")
@:structAccess
extern class CharInfo {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Font")
@:structAccess
extern class Font {
    var baseCount:Int;
    var charsCount:Int;
    var charsPadding:Int;
    var texture:Texture2D;
    var recs:cpp.RawPointer<Rectangle>;
    var chars:cpp.RawPointer<CharInfo>;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray {
    var position:Vector3;
    var direction:Vector3;
    
    public static inline function create():Ray {
        return untyped __cpp__("{ 0 }");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("RayCollision")
@:structAccess
extern class RayCollision {
    var hit:Bool;
    var distance:Float;
    var point:Vector3;
    var normal:Vector3;
    
    public static inline function create():RayCollision {
        return untyped __cpp__("{ 0 }");
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("BoundingBox")
@:structAccess
extern class BoundingBox {
    var min:Vector3;
    var max:Vector3;
    
    public static inline function create(min:Vector3, max:Vector3):BoundingBox {
        return untyped __cpp__("{ {0}, {1} }", min, max);
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Mesh")
@:structAccess
extern class Mesh {
    var vertexCount:Int;
    var triangleCount:Int;
    
    var vertices:cpp.RawPointer<cpp.Float32>;
    var texcoords:cpp.RawPointer<cpp.Float32>;
    var texcoords2:cpp.RawPointer<cpp.Float32>;
    var normals:cpp.RawPointer<cpp.Float32>;
    var tangents:cpp.RawPointer<cpp.Float32>;
    
    var animVertices:cpp.RawPointer<cpp.Float32>;
    var animNormals:cpp.RawPointer<cpp.Float32>;
    var boneIds:cpp.RawPointer<Int>;
    var boneWeights:cpp.RawPointer<cpp.Float32>;
    
    var vaoId:Int;
    var vboId:cpp.RawPointer<Int>;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Model")
@:structAccess
extern class Model {
    var transform:Matrix;
    
    var meshCount:Int;
    var materialCount:Int;
    var meshes:cpp.RawPointer<Mesh>;
    var materials:cpp.RawPointer<Material>;
    var meshMaterial:cpp.RawPointer<Int>;
    
    var boneCount:Int;
    var bones:cpp.RawPointer<BoneInfo>;
    var bindPose:cpp.RawPointer<Transform>;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Material")
@:structAccess
extern class Material {
    var shader:Shader;
    var maps:cpp.RawPointer<MaterialMap>;
    var params:Float; // TODO: float params[4]; ??
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("MaterialMap")
@:structAccess
extern class MaterialMap {
    var texture:Texture2D;
    var color: Color;
    var value:Float;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Matrix")
@:structAccess
extern class Matrix {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("BoneInfo")
@:structAccess
extern class BoneInfo {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Transform")
@:structAccess
extern class Transform {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RenderTexture {
    var id:Int;
    var texture:Texture;
    var depth:Texture;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef RenderTexture2D = RenderTexture;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int) from Int to Int {
    @:native("LOG_ALL")                 public static var ALL:Int;
    @:native("LOG_TRACE")               public static var TRACE:Int;
    @:native("LOG_DEBUG")               public static var DEBUG:Int;
    @:native("LOG_INFO")                public static var INFO:Int;
    @:native("LOG_WARNING")             public static var WARNING:Int;
    @:native("LOG_ERROR")               public static var ERROR:Int;
    @:native("LOG_FATAL")               public static var FATAL:Int;
    @:native("LOG_NONE")                public static var NONE:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
