package;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:buildXml("<include name='${haxelib:hxRayLib}/Build.xml'/>")
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
    // BeginTextureMode
    // EndTextureMode
    // BeginShaderMode
    // EndShaderMode
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
    // LoadShader
    // LoadShaderFromMemory
    // GetShaderLocation
    // GetShaderLocationAttrib
    // SetShaderValue
    // SetShaderValueV
    // SetShaderValueMatrix
    // SetShaderValueTexture
    // UnloadShader
    
    // Screen-space-related functions
    // GetMouseRay
    // GetCameraMatrix
    // GetCameraMatrix2D
    @:native("GetWorldToScreen")            public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;
    // GetWorldToScreenEx
    // GetWorldToScreen2D
    // GetScreenToWorld2D
    
    // Timing-related functions
    @:native("SetTargetFPS")                public static function SetTargetFPS(fps:Int):Void;
    // GetFPS
    // GetFrameTime
    // GetTime
    
    // Misc. functions
    // GetRandomValue
    // TakeScreenshot
    // SetConfigFlags
    
    // TraceLog
    // SetTraceLogLevel
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
    @:native("IsKeyPressed")                public static function IsKeyPressed(key:Int):Bool;
    @:native("IsKeyDown")                   public static function IsKeyDown(key:Int):Bool;
    @:native("IsKeyReleased")               public static function IsKeyReleased(key:Int):Bool;
    @:native("SetExitKey")                  public static function SetExitKey(key:Int):Void;
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
    @:native("IsMouseButtonPressed")        public static function IsMouseButtonPressed(button:Int):Bool;
    @:native("IsMouseButtonDown")           public static function IsMouseButtonDown(button:Int):Bool;
    @:native("IsMouseButtonReleased")       public static function IsMouseButtonReleased(button:Int):Bool;
    @:native("IsMouseButtonUp")             public static function IsMouseButtonUp(button:Int):Bool;
    @:native("GetMouseX")                   public static function GetMouseX():Int;
    @:native("GetMouseY")                   public static function GetMouseY():Int;
    @:native("GetMousePosition")            public static function GetMousePosition():Vector2;
    @:native("GetMouseDelta")               public static function GetMouseDelta():Vector2;
    @:native("SetMousePosition")            public static function SetMousePosition(x:Int, y:Int):Void;
    @:native("SetMouseOffset")              public static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;
    @:native("SetMouseScale")               public static function SetMouseScale(offsetX:Float, offsetY:Float):Void;
    @:native("GetMouseWheelMove")           public static function GetMouseWheelMove():Float;
    @:native("SetMouseCursor")              public static function SetMouseCursor(cursor:Int):Void;
    
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
    @:native("SetCameraMode")               public static function SetCameraMode(camera:Camera, mode:Int):Void;
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
    // LoadImage
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
    // LoadTexture
    @:native("LoadTextureFromImage")        public static function LoadTextureFromImage(image:Image):Texture2D;
    // LoadTextureFromImage
    // LoadTextureCubemap
    // LoadRenderTexture
    // UnloadTexture
    // UnloadRenderTexture
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
    // DrawTextureEx
    // DrawTextureRec
    // DrawTextureQuad
    // DrawTextureTiled
    // DrawTexturePro
    // DrawTextureNPatch
    // DrawTexturePoly
    
    // Color/pixel related functions
    @:native("Fade")                        public static function Fade(color:Color, alpha:Float):Color;
    @:native("ColorToInt")                  public static function ColorToInt(color:Color):Int;
    // ColorNormalize
    // ColorFromNormalized
    // ColorToHSV
    // ColorFromHSV
    // ColorAlpha
    // ColorAlphaBlend
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
    // MeasureTextEx
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
    // DrawRay
    @:native("DrawGrid")                public static function DrawGrid(slices:Int, spacing:Int):Void;
    
    // Model loading/unloading functions
    // LoadModel
    // LoadModelFromMesh
    // UnloadModel
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
    // GenMeshHeightmap
    // GenMeshCubicmap
    
    // Mesh manipulation functions
    // GetMeshBoundingBox
    // GenMeshTangents
    // GenMeshBinormals
    
    // Model drawing functions
    // DrawModel
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
    // GetRayCollisionBox
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
    var projection:Int;
    
    public static inline function create():Camera {
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
extern class MouseButtons {
    @:native("MOUSE_BUTTON_LEFT")       public static var MOUSE_BUTTON_LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")      public static var MOUSE_BUTTON_RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")     public static var MOUSE_BUTTON_MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")       public static var MOUSE_BUTTON_SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")      public static var MOUSE_BUTTON_EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")    public static var MOUSE_BUTTON_FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")       public static var MOUSE_BUTTON_BACK:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern class MouseCursors {
    @:native("MOUSE_CURSOR_DEFAULT")        public static var MOUSE_CURSOR_DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")          public static var MOUSE_CURSOR_ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")          public static var MOUSE_CURSOR_IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")      public static var MOUSE_CURSOR_CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")  public static var MOUSE_CURSOR_POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW")      public static var MOUSE_CURSOR_RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS")      public static var MOUSE_CURSOR_RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE")    public static var MOUSE_CURSOR_RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW")    public static var MOUSE_CURSOR_RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL")     public static var MOUSE_CURSOR_RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED")    public static var MOUSE_CURSOR_NOT_ALLOWED:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern class CameraProjections {
    @:native("CAMERA_PERSPECTIVE")      public static var CAMERA_PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")     public static var CAMERA_ORTHOGRAPHIC:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
extern class CameraModes {
    @:native("CAMERA_CUSTOM")           public static var CAMERA_CUSTOM:Int;
    @:native("CAMERA_FREE")             public static var CAMERA_FREE:Int;
    @:native("CAMERA_ORBITAL")          public static var CAMERA_ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")     public static var CAMERA_FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")     public static var CAMERA_THIRD_PERSON:Int;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@:include("raylib.h")
@:native("Texture2D")
@:structAccess
@:unreflective
extern class Texture2D {
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

typedef Texture = Texture2D;

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

