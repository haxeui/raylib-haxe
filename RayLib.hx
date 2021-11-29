package;

// Vector2
@:include("raylib.h")
@:native("Vector2")
@:structAccess
extern class Vector2 {
    var x:Float; // Vector x component
    var y:Float; // Vector y component

    public static inline function create(x:Float, y:Float):Vector2 {
        return untyped __cpp__("{ (float){0}, (float){1} }", x, y);
    }

    public static inline function createEmpty():Vector2 {
        return untyped __cpp__("{ 0 }");
    }
}

// Vector3
@:include("raylib.h")
@:native("Vector3")
@:structAccess
extern class Vector3 {
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component

    public static inline function create(x:Float, y:Float, z:Float):Vector3 {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2} }", x, y, z);
    }

    public static inline function createEmpty():Vector3 {
        return untyped __cpp__("{ 0 }");
    }
}

// Vector4
@:include("raylib.h")
@:native("Vector4")
@:structAccess
extern class Vector4 {
    var x:Float; // Vector x component
    var y:Float; // Vector y component
    var z:Float; // Vector z component
    var w:Float; // Vector w component

    public static inline function create(x:Float, y:Float, z:Float, w:Float):Vector4 {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, z, w);
    }

    public static inline function createEmpty():Vector4 {
        return untyped __cpp__("{ 0 }");
    }
}

// Matrix
@:include("raylib.h")
@:native("Matrix")
@:structAccess
extern class Matrix {
    var m0:Float; // Matrix first row (4 components)
    var m4:Float; // Matrix first row (4 components)
    var m8:Float; // Matrix first row (4 components)
    var m12:Float; // Matrix first row (4 components)
    var m1:Float; // Matrix second row (4 components)
    var m5:Float; // Matrix second row (4 components)
    var m9:Float; // Matrix second row (4 components)
    var m13:Float; // Matrix second row (4 components)
    var m2:Float; // Matrix third row (4 components)
    var m6:Float; // Matrix third row (4 components)
    var m10:Float; // Matrix third row (4 components)
    var m14:Float; // Matrix third row (4 components)
    var m3:Float; // Matrix fourth row (4 components)
    var m7:Float; // Matrix fourth row (4 components)
    var m11:Float; // Matrix fourth row (4 components)
    var m15:Float; // Matrix fourth row (4 components)

    public static inline function create(m0:Float, m4:Float, m8:Float, m12:Float, m1:Float, m5:Float, m9:Float, m13:Float, m2:Float, m6:Float, m10:Float, m14:Float, m3:Float, m7:Float, m11:Float, m15:Float):Matrix {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7}, (float){8}, (float){9}, (float){10}, (float){11}, (float){12}, (float){13}, (float){14}, (float){15} }", m0, m4, m8, m12, m1, m5, m9, m13, m2, m6, m10, m14, m3, m7, m11, m15);
    }

    public static inline function createEmpty():Matrix {
        return untyped __cpp__("{ 0 }");
    }
}

// Color
@:include("raylib.h")
@:native("Color")
@:structAccess
extern class Color {
    var r:cpp.UInt8; // Color red value
    var g:cpp.UInt8; // Color green value
    var b:cpp.UInt8; // Color blue value
    var a:cpp.UInt8; // Color alpha value

    public static inline function create(r:cpp.UInt8, g:cpp.UInt8, b:cpp.UInt8, a:cpp.UInt8):Color {
        return untyped __cpp__("{ (unsigned char){0}, (unsigned char){1}, (unsigned char){2}, (unsigned char){3} }", r, g, b, a);
    }

    public static inline function createEmpty():Color {
        return untyped __cpp__("{ 0 }");
    }
}

// Rectangle
@:include("raylib.h")
@:native("Rectangle")
@:structAccess
extern class Rectangle {
    var x:Float; // Rectangle top-left corner position x
    var y:Float; // Rectangle top-left corner position y
    var width:Float; // Rectangle width
    var height:Float; // Rectangle height

    public static inline function create(x:Float, y:Float, width:Float, height:Float):Rectangle {
        return untyped __cpp__("{ (float){0}, (float){1}, (float){2}, (float){3} }", x, y, width, height);
    }

    public static inline function createEmpty():Rectangle {
        return untyped __cpp__("{ 0 }");
    }
}

// Image
@:include("raylib.h")
@:native("Image")
@:structAccess
extern class Image {
    var data:cpp.RawPointer<cpp.Void>; // Image raw data
    var width:Int; // Image base width
    var height:Int; // Image base height
    var mipmaps:Int; // Mipmap levels, 1 by default
    var format:Int; // Data format (PixelFormat type)

    public static inline function create(data:cpp.RawPointer<cpp.Void>, width:Int, height:Int, mipmaps:Int, format:Int):Image {
        return untyped __cpp__("{ (void *){0}, (int){1}, (int){2}, (int){3}, (int){4} }", data, width, height, mipmaps, format);
    }

    public static inline function createEmpty():Image {
        return untyped __cpp__("{ 0 }");
    }
}

// Texture alias
typedef TextureCubemap = Texture;

// Texture alias
typedef Texture2D = Texture;

// Texture
@:include("raylib.h")
@:native("Texture")
@:structAccess
extern class Texture {
    var id:Int; // OpenGL texture id
    var width:Int; // Texture base width
    var height:Int; // Texture base height
    var mipmaps:Int; // Mipmap levels, 1 by default
    var format:Int; // Data format (PixelFormat type)

    public static inline function create(id:Int, width:Int, height:Int, mipmaps:Int, format:Int):Texture {
        return untyped __cpp__("{ (unsigned int){0}, (int){1}, (int){2}, (int){3}, (int){4} }", id, width, height, mipmaps, format);
    }

    public static inline function createEmpty():Texture {
        return untyped __cpp__("{ 0 }");
    }
}

// RenderTexture alias
typedef RenderTexture2D = RenderTexture;

// RenderTexture
@:include("raylib.h")
@:native("RenderTexture")
@:structAccess
extern class RenderTexture {
    var id:Int; // OpenGL framebuffer object id
    var texture:Texture; // Color buffer attachment texture
    var depth:Texture; // Depth buffer attachment texture

    public static inline function create(id:Int, texture:Texture, depth:Texture):RenderTexture {
        return untyped __cpp__("{ (unsigned int){0}, (Texture){1}, (Texture){2} }", id, texture, depth);
    }

    public static inline function createEmpty():RenderTexture {
        return untyped __cpp__("{ 0 }");
    }
}

// NPatchInfo
@:include("raylib.h")
@:native("NPatchInfo")
@:structAccess
extern class NPatchInfo {
    var source:Rectangle; // Texture source rectangle
    var left:Int; // Left border offset
    var top:Int; // Top border offset
    var right:Int; // Right border offset
    var bottom:Int; // Bottom border offset
    var layout:Int; // Layout of the n-patch: 3x3, 1x3 or 3x1

    public static inline function create(source:Rectangle, left:Int, top:Int, right:Int, bottom:Int, layout:Int):NPatchInfo {
        return untyped __cpp__("{ (Rectangle){0}, (int){1}, (int){2}, (int){3}, (int){4}, (int){5} }", source, left, top, right, bottom, layout);
    }

    public static inline function createEmpty():NPatchInfo {
        return untyped __cpp__("{ 0 }");
    }
}

// GlyphInfo
@:include("raylib.h")
@:native("GlyphInfo")
@:structAccess
extern class GlyphInfo {
    var value:Int; // Character value (Unicode)
    var offsetX:Int; // Character offset X when drawing
    var offsetY:Int; // Character offset Y when drawing
    var advanceX:Int; // Character advance position X
    var image:Image; // Character image data

    public static inline function create(value:Int, offsetX:Int, offsetY:Int, advanceX:Int, image:Image):GlyphInfo {
        return untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (int){3}, (Image){4} }", value, offsetX, offsetY, advanceX, image);
    }

    public static inline function createEmpty():GlyphInfo {
        return untyped __cpp__("{ 0 }");
    }
}

// Font
@:include("raylib.h")
@:native("Font")
@:structAccess
extern class Font {
    var baseSize:Int; // Base size (default chars height)
    var glyphCount:Int; // Number of glyph characters
    var glyphPadding:Int; // Padding around the glyph characters
    var texture:Texture2D; // Texture atlas containing the glyphs
    var recs:cpp.RawPointer<Rectangle>; // Rectangles in texture for the glyphs
    var glyphs:cpp.RawPointer<GlyphInfo>; // Glyphs info data

    public static inline function create(baseSize:Int, glyphCount:Int, glyphPadding:Int, texture:Texture2D, recs:cpp.RawPointer<Rectangle>, glyphs:cpp.RawPointer<GlyphInfo>):Font {
        return untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (Texture2D){3}, (Rectangle *){4}, (GlyphInfo *){5} }", baseSize, glyphCount, glyphPadding, texture, recs, glyphs);
    }

    public static inline function createEmpty():Font {
        return untyped __cpp__("{ 0 }");
    }
}

// Camera3D alias
typedef Camera = Camera3D;

// Camera3D
@:include("raylib.h")
@:native("Camera3D")
@:structAccess
extern class Camera3D {
    var position:Vector3; // Camera position
    var target:Vector3; // Camera target it looks-at
    var up:Vector3; // Camera up vector (rotation over its axis)
    var fovy:Float; // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
    var projection:Int; // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC

    public static inline function create(position:Vector3, target:Vector3, up:Vector3, fovy:Float, projection:Int):Camera3D {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1}, (Vector3){2}, (float){3}, (int){4} }", position, target, up, fovy, projection);
    }

    public static inline function createEmpty():Camera3D {
        return untyped __cpp__("{ 0 }");
    }
}

// Camera2D
@:include("raylib.h")
@:native("Camera2D")
@:structAccess
extern class Camera2D {
    var offset:Vector2; // Camera offset (displacement from target)
    var target:Vector2; // Camera target (rotation and zoom origin)
    var rotation:Float; // Camera rotation in degrees
    var zoom:Float; // Camera zoom (scaling), should be 1.0f by default

    public static inline function create(offset:Vector2, target:Vector2, rotation:Float, zoom:Float):Camera2D {
        return untyped __cpp__("{ (Vector2){0}, (Vector2){1}, (float){2}, (float){3} }", offset, target, rotation, zoom);
    }

    public static inline function createEmpty():Camera2D {
        return untyped __cpp__("{ 0 }");
    }
}

// Mesh
@:include("raylib.h")
@:native("Mesh")
@:structAccess
extern class Mesh {
    var vertexCount:Int; // Number of vertices stored in arrays
    var triangleCount:Int; // Number of triangles stored (indexed or not)
    var vertices:cpp.RawPointer<Float>; // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    var texcoords:cpp.RawPointer<Float>; // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    var texcoords2:cpp.RawPointer<Float>; // Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    var normals:cpp.RawPointer<Float>; // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    var tangents:cpp.RawPointer<Float>; // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
    var colors:cpp.RawPointer<cpp.UInt8>; // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    var indices:cpp.RawPointer<Int>; // Vertex indices (in case vertex data comes indexed)
    var animVertices:cpp.RawPointer<Float>; // Animated vertex positions (after bones transformations)
    var animNormals:cpp.RawPointer<Float>; // Animated normals (after bones transformations)
    var boneIds:cpp.RawPointer<cpp.UInt8>; // Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
    var boneWeights:cpp.RawPointer<Float>; // Vertex bone weight, up to 4 bones influence by vertex (skinning)
    var vaoId:Int; // OpenGL Vertex Array Object id
    var vboId:cpp.RawPointer<Int>; // OpenGL Vertex Buffer Objects id (default vertex data)

    public static inline function create(vertexCount:Int, triangleCount:Int, vertices:cpp.RawPointer<Float>, texcoords:cpp.RawPointer<Float>, texcoords2:cpp.RawPointer<Float>, normals:cpp.RawPointer<Float>, tangents:cpp.RawPointer<Float>, colors:cpp.RawPointer<cpp.UInt8>, indices:cpp.RawPointer<Int>, animVertices:cpp.RawPointer<Float>, animNormals:cpp.RawPointer<Float>, boneIds:cpp.RawPointer<cpp.UInt8>, boneWeights:cpp.RawPointer<Float>, vaoId:Int, vboId:cpp.RawPointer<Int>):Mesh {
        return untyped __cpp__("{ (int){0}, (int){1}, (float *){2}, (float *){3}, (float *){4}, (float *){5}, (float *){6}, (unsigned char *){7}, (unsigned short *){8}, (float *){9}, (float *){10}, (unsigned char *){11}, (float *){12}, (unsigned int){13}, (unsigned int *){14} }", vertexCount, triangleCount, vertices, texcoords, texcoords2, normals, tangents, colors, indices, animVertices, animNormals, boneIds, boneWeights, vaoId, vboId);
    }

    public static inline function createEmpty():Mesh {
        return untyped __cpp__("{ 0 }");
    }
}

// Shader
@:include("raylib.h")
@:native("Shader")
@:structAccess
extern class Shader {
    var id:Int; // Shader program id
    var locs:cpp.RawPointer<Int>; // Shader locations array (RL_MAX_SHADER_LOCATIONS)

    public static inline function create(id:Int, locs:cpp.RawPointer<Int>):Shader {
        return untyped __cpp__("{ (unsigned int){0}, (int *){1} }", id, locs);
    }

    public static inline function createEmpty():Shader {
        return untyped __cpp__("{ 0 }");
    }
}

// MaterialMap
@:include("raylib.h")
@:native("MaterialMap")
@:structAccess
extern class MaterialMap {
    var texture:Texture2D; // Material map texture
    var color:Color; // Material map color
    var value:Float; // Material map value

    public static inline function create(texture:Texture2D, color:Color, value:Float):MaterialMap {
        return untyped __cpp__("{ (Texture2D){0}, (Color){1}, (float){2} }", texture, color, value);
    }

    public static inline function createEmpty():MaterialMap {
        return untyped __cpp__("{ 0 }");
    }
}

// Material
@:include("raylib.h")
@:native("Material")
@:structAccess
extern class Material {
    var shader:Shader; // Material shader
    var maps:cpp.RawPointer<MaterialMap>; // Material maps array (MAX_MATERIAL_MAPS)
    var params:Float; // Material generic parameters (if required) - TODO: cpp native array (original: "float params[4]")

    public static inline function create(shader:Shader, maps:cpp.RawPointer<MaterialMap>, params:Float):Material {
        return untyped __cpp__("{ (Shader){0}, (MaterialMap *){1}, (float){2} }", shader, maps, params);
    }

    public static inline function createEmpty():Material {
        return untyped __cpp__("{ 0 }");
    }
}

// Transform
@:include("raylib.h")
@:native("Transform")
@:structAccess
extern class Transform {
    var translation:Vector3; // Translation
    var rotation:Quaternion; // Rotation
    var scale:Vector3; // Scale

    public static inline function create(translation:Vector3, rotation:Quaternion, scale:Vector3):Transform {
        return untyped __cpp__("{ (Vector3){0}, (Quaternion){1}, (Vector3){2} }", translation, rotation, scale);
    }

    public static inline function createEmpty():Transform {
        return untyped __cpp__("{ 0 }");
    }
}

// BoneInfo
@:include("raylib.h")
@:native("BoneInfo")
@:structAccess
extern class BoneInfo {
    var name:Int; // Bone name - TODO: cpp native array (original: "char name[32]")
    var parent:Int; // Bone parent

    public static inline function create(name:Int, parent:Int):BoneInfo {
        return untyped __cpp__("{ (char){0}, (int){1} }", name, parent);
    }

    public static inline function createEmpty():BoneInfo {
        return untyped __cpp__("{ 0 }");
    }
}

// Model
@:include("raylib.h")
@:native("Model")
@:structAccess
extern class Model {
    var transform:Matrix; // Local transform matrix
    var meshCount:Int; // Number of meshes
    var materialCount:Int; // Number of materials
    var meshes:cpp.RawPointer<Mesh>; // Meshes array
    var materials:cpp.RawPointer<Material>; // Materials array
    var meshMaterial:cpp.RawPointer<Int>; // Mesh material number
    var boneCount:Int; // Number of bones
    var bones:cpp.RawPointer<BoneInfo>; // Bones information (skeleton)
    var bindPose:cpp.RawPointer<Transform>; // Bones base transformation (pose)

    public static inline function create(transform:Matrix, meshCount:Int, materialCount:Int, meshes:cpp.RawPointer<Mesh>, materials:cpp.RawPointer<Material>, meshMaterial:cpp.RawPointer<Int>, boneCount:Int, bones:cpp.RawPointer<BoneInfo>, bindPose:cpp.RawPointer<Transform>):Model {
        return untyped __cpp__("{ (Matrix){0}, (int){1}, (int){2}, (Mesh *){3}, (Material *){4}, (int *){5}, (int){6}, (BoneInfo *){7}, (Transform *){8} }", transform, meshCount, materialCount, meshes, materials, meshMaterial, boneCount, bones, bindPose);
    }

    public static inline function createEmpty():Model {
        return untyped __cpp__("{ 0 }");
    }
}

// ModelAnimation
@:include("raylib.h")
@:native("ModelAnimation")
@:structAccess
extern class ModelAnimation {
    var boneCount:Int; // Number of bones
    var frameCount:Int; // Number of animation frames
    var bones:cpp.RawPointer<BoneInfo>; // Bones information (skeleton)
    var framePoses:cpp.RawPointer<cpp.RawPointer<Transform>>; // Poses array by frame

    public static inline function create(boneCount:Int, frameCount:Int, bones:cpp.RawPointer<BoneInfo>, framePoses:cpp.RawPointer<cpp.RawPointer<Transform>>):ModelAnimation {
        return untyped __cpp__("{ (int){0}, (int){1}, (BoneInfo *){2}, (Transform **){3} }", boneCount, frameCount, bones, framePoses);
    }

    public static inline function createEmpty():ModelAnimation {
        return untyped __cpp__("{ 0 }");
    }
}

// Ray
@:include("raylib.h")
@:native("Ray")
@:structAccess
extern class Ray {
    var position:Vector3; // Ray position (origin)
    var direction:Vector3; // Ray direction

    public static inline function create(position:Vector3, direction:Vector3):Ray {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", position, direction);
    }

    public static inline function createEmpty():Ray {
        return untyped __cpp__("{ 0 }");
    }
}

// RayCollision
@:include("raylib.h")
@:native("RayCollision")
@:structAccess
extern class RayCollision {
    var hit:Bool; // Did the ray hit something?
    var distance:Float; // Distance to nearest hit
    var point:Vector3; // Point of nearest hit
    var normal:Vector3; // Surface normal of hit

    public static inline function create(hit:Bool, distance:Float, point:Vector3, normal:Vector3):RayCollision {
        return untyped __cpp__("{ (bool){0}, (float){1}, (Vector3){2}, (Vector3){3} }", hit, distance, point, normal);
    }

    public static inline function createEmpty():RayCollision {
        return untyped __cpp__("{ 0 }");
    }
}

// BoundingBox
@:include("raylib.h")
@:native("BoundingBox")
@:structAccess
extern class BoundingBox {
    var min:Vector3; // Minimum vertex box-corner
    var max:Vector3; // Maximum vertex box-corner

    public static inline function create(min:Vector3, max:Vector3):BoundingBox {
        return untyped __cpp__("{ (Vector3){0}, (Vector3){1} }", min, max);
    }

    public static inline function createEmpty():BoundingBox {
        return untyped __cpp__("{ 0 }");
    }
}

// Wave
@:include("raylib.h")
@:native("Wave")
@:structAccess
extern class Wave {
    var frameCount:Int; // Total number of frames (considering channels)
    var sampleRate:Int; // Frequency (samples per second)
    var sampleSize:Int; // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    var channels:Int; // Number of channels (1-mono, 2-stereo, ...)
    var data:cpp.RawPointer<cpp.Void>; // Buffer data pointer

    public static inline function create(frameCount:Int, sampleRate:Int, sampleSize:Int, channels:Int, data:cpp.RawPointer<cpp.Void>):Wave {
        return untyped __cpp__("{ (unsigned int){0}, (unsigned int){1}, (unsigned int){2}, (unsigned int){3}, (void *){4} }", frameCount, sampleRate, sampleSize, channels, data);
    }

    public static inline function createEmpty():Wave {
        return untyped __cpp__("{ 0 }");
    }
}

// AudioStream
@:include("raylib.h")
@:native("AudioStream")
@:structAccess
extern class AudioStream {
    var buffer:cpp.RawPointer<RAudioBuffer>; // Pointer to internal data used by the audio system
    var sampleRate:Int; // Frequency (samples per second)
    var sampleSize:Int; // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    var channels:Int; // Number of channels (1-mono, 2-stereo, ...)

    public static inline function create(buffer:cpp.RawPointer<RAudioBuffer>, sampleRate:Int, sampleSize:Int, channels:Int):AudioStream {
        return untyped __cpp__("{ (rAudioBuffer *){0}, (unsigned int){1}, (unsigned int){2}, (unsigned int){3} }", buffer, sampleRate, sampleSize, channels);
    }

    public static inline function createEmpty():AudioStream {
        return untyped __cpp__("{ 0 }");
    }
}

// Sound
@:include("raylib.h")
@:native("Sound")
@:structAccess
extern class Sound {
    var stream:AudioStream; // Audio stream
    var frameCount:Int; // Total number of frames (considering channels)

    public static inline function create(stream:AudioStream, frameCount:Int):Sound {
        return untyped __cpp__("{ (AudioStream){0}, (unsigned int){1} }", stream, frameCount);
    }

    public static inline function createEmpty():Sound {
        return untyped __cpp__("{ 0 }");
    }
}

// Music
@:include("raylib.h")
@:native("Music")
@:structAccess
extern class Music {
    var stream:AudioStream; // Audio stream
    var frameCount:Int; // Total number of frames (considering channels)
    var looping:Bool; // Music looping enable
    var ctxType:Int; // Type of music context (audio filetype)
    var ctxData:cpp.RawPointer<cpp.Void>; // Audio context data, depends on type

    public static inline function create(stream:AudioStream, frameCount:Int, looping:Bool, ctxType:Int, ctxData:cpp.RawPointer<cpp.Void>):Music {
        return untyped __cpp__("{ (AudioStream){0}, (unsigned int){1}, (bool){2}, (int){3}, (void *){4} }", stream, frameCount, looping, ctxType, ctxData);
    }

    public static inline function createEmpty():Music {
        return untyped __cpp__("{ 0 }");
    }
}

// VrDeviceInfo
@:include("raylib.h")
@:native("VrDeviceInfo")
@:structAccess
extern class VrDeviceInfo {
    var hResolution:Int; // Horizontal resolution in pixels
    var vResolution:Int; // Vertical resolution in pixels
    var hScreenSize:Float; // Horizontal size in meters
    var vScreenSize:Float; // Vertical size in meters
    var vScreenCenter:Float; // Screen center in meters
    var eyeToScreenDistance:Float; // Distance between eye and display in meters
    var lensSeparationDistance:Float; // Lens separation distance in meters
    var interpupillaryDistance:Float; // IPD (distance between pupils) in meters
    var lensDistortionValues:Float; // Lens distortion constant parameters - TODO: cpp native array (original: "float lensDistortionValues[4]")
    var chromaAbCorrection:Float; // Chromatic aberration correction parameters - TODO: cpp native array (original: "float chromaAbCorrection[4]")

    public static inline function create(hResolution:Int, vResolution:Int, hScreenSize:Float, vScreenSize:Float, vScreenCenter:Float, eyeToScreenDistance:Float, lensSeparationDistance:Float, interpupillaryDistance:Float, lensDistortionValues:Float, chromaAbCorrection:Float):VrDeviceInfo {
        return untyped __cpp__("{ (int){0}, (int){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7}, (float){8}, (float){9} }", hResolution, vResolution, hScreenSize, vScreenSize, vScreenCenter, eyeToScreenDistance, lensSeparationDistance, interpupillaryDistance, lensDistortionValues, chromaAbCorrection);
    }

    public static inline function createEmpty():VrDeviceInfo {
        return untyped __cpp__("{ 0 }");
    }
}

// VrStereoConfig
@:include("raylib.h")
@:native("VrStereoConfig")
@:structAccess
extern class VrStereoConfig {
    var projection:Matrix; // VR projection matrices (per eye) - TODO: cpp native array (original: "Matrix projection[2]")
    var viewOffset:Matrix; // VR view offset matrices (per eye) - TODO: cpp native array (original: "Matrix viewOffset[2]")
    var leftLensCenter:Float; // VR left lens center - TODO: cpp native array (original: "float leftLensCenter[2]")
    var rightLensCenter:Float; // VR right lens center - TODO: cpp native array (original: "float rightLensCenter[2]")
    var leftScreenCenter:Float; // VR left screen center - TODO: cpp native array (original: "float leftScreenCenter[2]")
    var rightScreenCenter:Float; // VR right screen center - TODO: cpp native array (original: "float rightScreenCenter[2]")
    var scale:Float; // VR distortion scale - TODO: cpp native array (original: "float scale[2]")
    var scaleIn:Float; // VR distortion scale in - TODO: cpp native array (original: "float scaleIn[2]")

    public static inline function create(projection:Matrix, viewOffset:Matrix, leftLensCenter:Float, rightLensCenter:Float, leftScreenCenter:Float, rightScreenCenter:Float, scale:Float, scaleIn:Float):VrStereoConfig {
        return untyped __cpp__("{ (Matrix){0}, (Matrix){1}, (float){2}, (float){3}, (float){4}, (float){5}, (float){6}, (float){7} }", projection, viewOffset, leftLensCenter, rightLensCenter, leftScreenCenter, rightScreenCenter, scale, scaleIn);
    }

    public static inline function createEmpty():VrStereoConfig {
        return untyped __cpp__("{ 0 }");
    }
}

// TODO: empty structs - not sure where they come from in the api - but they need to be defined
@:include("raylib.h")
@:native("LoadFileDataCallback")
extern class LoadFileDataCallback {
}

@:include("raylib.h")
@:native("SaveFileDataCallback")
extern class SaveFileDataCallback {
}

@:include("raylib.h")
@:native("Quaternion")
extern class Quaternion {
}

@:include("raylib.h")
@:native("TraceLogCallback")
extern class TraceLogCallback {
}

@:include("raylib.h")
@:native("LoadFileTextCallback")
extern class LoadFileTextCallback {
}

@:include("raylib.h")
@:native("rAudioBuffer")
extern class RAudioBuffer {
}

@:include("raylib.h")
@:native("SaveFileTextCallback")
extern class SaveFileTextCallback {
}

@:buildXml("<include name='${haxelib:raylib-haxe}/Build.xml'/>")
@:include("raylib.h")
extern class RayLib {
    @:native("InitWindow")                               public static function InitWindow(width:Int, height:Int, title:cpp.ConstCharStar):Void;      // Initialize window and OpenGL context
    @:native("WindowShouldClose")                        public static function WindowShouldClose():Bool;      // Check if KEY_ESCAPE pressed or Close icon pressed
    @:native("CloseWindow")                              public static function CloseWindow():Void;      // Close window and unload OpenGL context
    @:native("IsWindowReady")                            public static function IsWindowReady():Bool;      // Check if window has been initialized successfully
    @:native("IsWindowFullscreen")                       public static function IsWindowFullscreen():Bool;      // Check if window is currently fullscreen
    @:native("IsWindowHidden")                           public static function IsWindowHidden():Bool;      // Check if window is currently hidden (only PLATFORM_DESKTOP)
    @:native("IsWindowMinimized")                        public static function IsWindowMinimized():Bool;      // Check if window is currently minimized (only PLATFORM_DESKTOP)
    @:native("IsWindowMaximized")                        public static function IsWindowMaximized():Bool;      // Check if window is currently maximized (only PLATFORM_DESKTOP)
    @:native("IsWindowFocused")                          public static function IsWindowFocused():Bool;      // Check if window is currently focused (only PLATFORM_DESKTOP)
    @:native("IsWindowResized")                          public static function IsWindowResized():Bool;      // Check if window has been resized last frame
    @:native("IsWindowState")                            public static function IsWindowState(flag:Int):Bool;      // Check if one specific window flag is enabled
    @:native("SetWindowState")                           public static function SetWindowState(flags:Int):Void;      // Set window configuration state using flags
    @:native("ClearWindowState")                         public static function ClearWindowState(flags:Int):Void;      // Clear window configuration state flags
    @:native("ToggleFullscreen")                         public static function ToggleFullscreen():Void;      // Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)
    @:native("MaximizeWindow")                           public static function MaximizeWindow():Void;      // Set window state: maximized, if resizable (only PLATFORM_DESKTOP)
    @:native("MinimizeWindow")                           public static function MinimizeWindow():Void;      // Set window state: minimized, if resizable (only PLATFORM_DESKTOP)
    @:native("RestoreWindow")                            public static function RestoreWindow():Void;      // Set window state: not minimized/maximized (only PLATFORM_DESKTOP)
    @:native("SetWindowIcon")                            public static function SetWindowIcon(image:Image):Void;      // Set icon for window (only PLATFORM_DESKTOP)
    @:native("SetWindowTitle")                           public static function SetWindowTitle(title:cpp.ConstCharStar):Void;      // Set title for window (only PLATFORM_DESKTOP)
    @:native("SetWindowPosition")                        public static function SetWindowPosition(x:Int, y:Int):Void;      // Set window position on screen (only PLATFORM_DESKTOP)
    @:native("SetWindowMonitor")                         public static function SetWindowMonitor(monitor:Int):Void;      // Set monitor for the current window (fullscreen mode)
    @:native("SetWindowMinSize")                         public static function SetWindowMinSize(width:Int, height:Int):Void;      // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
    @:native("SetWindowSize")                            public static function SetWindowSize(width:Int, height:Int):Void;      // Set window dimensions
    @:native("GetWindowHandle")                          public static function GetWindowHandle():cpp.RawPointer<cpp.Void>;      // Get native window handle
    @:native("GetScreenWidth")                           public static function GetScreenWidth():Int;      // Get current screen width
    @:native("GetScreenHeight")                          public static function GetScreenHeight():Int;      // Get current screen height
    @:native("GetMonitorCount")                          public static function GetMonitorCount():Int;      // Get number of connected monitors
    @:native("GetCurrentMonitor")                        public static function GetCurrentMonitor():Int;      // Get current connected monitor
    @:native("GetMonitorPosition")                       public static function GetMonitorPosition(monitor:Int):Vector2;      // Get specified monitor position
    @:native("GetMonitorWidth")                          public static function GetMonitorWidth(monitor:Int):Int;      // Get specified monitor width (max available by monitor)
    @:native("GetMonitorHeight")                         public static function GetMonitorHeight(monitor:Int):Int;      // Get specified monitor height (max available by monitor)
    @:native("GetMonitorPhysicalWidth")                  public static function GetMonitorPhysicalWidth(monitor:Int):Int;      // Get specified monitor physical width in millimetres
    @:native("GetMonitorPhysicalHeight")                 public static function GetMonitorPhysicalHeight(monitor:Int):Int;      // Get specified monitor physical height in millimetres
    @:native("GetMonitorRefreshRate")                    public static function GetMonitorRefreshRate(monitor:Int):Int;      // Get specified monitor refresh rate
    @:native("GetWindowPosition")                        public static function GetWindowPosition():Vector2;      // Get window position XY on monitor
    @:native("GetWindowScaleDPI")                        public static function GetWindowScaleDPI():Vector2;      // Get window scale DPI factor
    @:native("GetMonitorName")                           public static function GetMonitorName(monitor:Int):cpp.ConstCharStar;      // Get the human-readable, UTF-8 encoded name of the primary monitor
    @:native("SetClipboardText")                         public static function SetClipboardText(text:cpp.ConstCharStar):Void;      // Set clipboard text content
    @:native("GetClipboardText")                         public static function GetClipboardText():cpp.ConstCharStar;      // Get clipboard text content
    @:native("SwapScreenBuffer")                         public static function SwapScreenBuffer():Void;      // Swap back buffer with front buffer (screen drawing)
    @:native("PollInputEvents")                          public static function PollInputEvents():Void;      // Register all input events
    @:native("WaitTime")                                 public static function WaitTime(ms:Float):Void;      // Wait for some milliseconds (halt program execution)
    @:native("ShowCursor")                               public static function ShowCursor():Void;      // Shows cursor
    @:native("HideCursor")                               public static function HideCursor():Void;      // Hides cursor
    @:native("IsCursorHidden")                           public static function IsCursorHidden():Bool;      // Check if cursor is not visible
    @:native("EnableCursor")                             public static function EnableCursor():Void;      // Enables cursor (unlock cursor)
    @:native("DisableCursor")                            public static function DisableCursor():Void;      // Disables cursor (lock cursor)
    @:native("IsCursorOnScreen")                         public static function IsCursorOnScreen():Bool;      // Check if cursor is on the screen
    @:native("ClearBackground")                          public static function ClearBackground(color:Color):Void;      // Set background color (framebuffer clear color)
    @:native("BeginDrawing")                             public static function BeginDrawing():Void;      // Setup canvas (framebuffer) to start drawing
    @:native("EndDrawing")                               public static function EndDrawing():Void;      // End canvas drawing and swap buffers (double buffering)
    @:native("BeginMode2D")                              public static function BeginMode2D(camera:Camera2D):Void;      // Begin 2D mode with custom camera (2D)
    @:native("EndMode2D")                                public static function EndMode2D():Void;      // Ends 2D mode with custom camera
    @:native("BeginMode3D")                              public static function BeginMode3D(camera:Camera3D):Void;      // Begin 3D mode with custom camera (3D)
    @:native("EndMode3D")                                public static function EndMode3D():Void;      // Ends 3D mode and returns to default 2D orthographic mode
    @:native("BeginTextureMode")                         public static function BeginTextureMode(target:RenderTexture2D):Void;      // Begin drawing to render texture
    @:native("EndTextureMode")                           public static function EndTextureMode():Void;      // Ends drawing to render texture
    @:native("BeginShaderMode")                          public static function BeginShaderMode(shader:Shader):Void;      // Begin custom shader drawing
    @:native("EndShaderMode")                            public static function EndShaderMode():Void;      // End custom shader drawing (use default shader)
    @:native("BeginBlendMode")                           public static function BeginBlendMode(mode:Int):Void;      // Begin blending mode (alpha, additive, multiplied, subtract, custom)
    @:native("EndBlendMode")                             public static function EndBlendMode():Void;      // End blending mode (reset to default: alpha blending)
    @:native("BeginScissorMode")                         public static function BeginScissorMode(x:Int, y:Int, width:Int, height:Int):Void;      // Begin scissor mode (define screen area for following drawing)
    @:native("EndScissorMode")                           public static function EndScissorMode():Void;      // End scissor mode
    @:native("BeginVrStereoMode")                        public static function BeginVrStereoMode(config:VrStereoConfig):Void;      // Begin stereo rendering (requires VR simulator)
    @:native("EndVrStereoMode")                          public static function EndVrStereoMode():Void;      // End stereo rendering (requires VR simulator)
    @:native("LoadVrStereoConfig")                       public static function LoadVrStereoConfig(device:VrDeviceInfo):VrStereoConfig;      // Load VR stereo config for VR simulator device parameters
    @:native("UnloadVrStereoConfig")                     public static function UnloadVrStereoConfig(config:VrStereoConfig):Void;      // Unload VR stereo config
    @:native("LoadShader")                               public static function LoadShader(vsFileName:cpp.ConstCharStar, fsFileName:cpp.ConstCharStar):Shader;      // Load shader from files and bind default locations
    @:native("LoadShaderFromMemory")                     public static function LoadShaderFromMemory(vsCode:cpp.ConstCharStar, fsCode:cpp.ConstCharStar):Shader;      // Load shader from code strings and bind default locations
    @:native("GetShaderLocation")                        public static function GetShaderLocation(shader:Shader, uniformName:cpp.ConstCharStar):Int;      // Get shader uniform location
    @:native("GetShaderLocationAttrib")                  public static function GetShaderLocationAttrib(shader:Shader, attribName:cpp.ConstCharStar):Int;      // Get shader attribute location
    @:native("SetShaderValue")                           public static function SetShaderValue(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int):Void;      // Set shader uniform value
    @:native("SetShaderValueV")                          public static function SetShaderValueV(shader:Shader, locIndex:Int, value:cpp.RawConstPointer<cpp.Void>, uniformType:Int, count:Int):Void;      // Set shader uniform value vector
    @:native("SetShaderValueMatrix")                     public static function SetShaderValueMatrix(shader:Shader, locIndex:Int, mat:Matrix):Void;      // Set shader uniform value (matrix 4x4)
    @:native("SetShaderValueTexture")                    public static function SetShaderValueTexture(shader:Shader, locIndex:Int, texture:Texture2D):Void;      // Set shader uniform value for texture (sampler2d)
    @:native("UnloadShader")                             public static function UnloadShader(shader:Shader):Void;      // Unload shader from GPU memory (VRAM)
    @:native("GetMouseRay")                              public static function GetMouseRay(mousePosition:Vector2, camera:Camera):Ray;      // Get a ray trace from mouse position
    @:native("GetCameraMatrix")                          public static function GetCameraMatrix(camera:Camera):Matrix;      // Get camera transform matrix (view matrix)
    @:native("GetCameraMatrix2D")                        public static function GetCameraMatrix2D(camera:Camera2D):Matrix;      // Get camera 2d transform matrix
    @:native("GetWorldToScreen")                         public static function GetWorldToScreen(position:Vector3, camera:Camera):Vector2;      // Get the screen space position for a 3d world space position
    @:native("GetWorldToScreenEx")                       public static function GetWorldToScreenEx(position:Vector3, camera:Camera, width:Int, height:Int):Vector2;      // Get size position for a 3d world space position
    @:native("GetWorldToScreen2D")                       public static function GetWorldToScreen2D(position:Vector2, camera:Camera2D):Vector2;      // Get the screen space position for a 2d camera world space position
    @:native("GetScreenToWorld2D")                       public static function GetScreenToWorld2D(position:Vector2, camera:Camera2D):Vector2;      // Get the world space position for a 2d camera screen space position
    @:native("SetTargetFPS")                             public static function SetTargetFPS(fps:Int):Void;      // Set target FPS (maximum)
    @:native("GetFPS")                                   public static function GetFPS():Int;      // Get current FPS
    @:native("GetFrameTime")                             public static function GetFrameTime():Float;      // Get time in seconds for last frame drawn (delta time)
    @:native("GetTime")                                  public static function GetTime():Float;      // Get elapsed time in seconds since InitWindow()
    @:native("GetRandomValue")                           public static function GetRandomValue(min:Int, max:Int):Int;      // Get a random value between min and max (both included)
    @:native("SetRandomSeed")                            public static function SetRandomSeed(seed:Int):Void;      // Set the seed for the random number generator
    @:native("TakeScreenshot")                           public static function TakeScreenshot(fileName:cpp.ConstCharStar):Void;      // Takes a screenshot of current screen (filename extension defines format)
    @:native("SetConfigFlags")                           public static function SetConfigFlags(flags:Int):Void;      // Setup init configuration flags (view FLAGS)
    @:native("TraceLog")                                 public static function TraceLog(logLevel:Int, text:cpp.ConstCharStar):Void;      // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
    @:native("SetTraceLogLevel")                         public static function SetTraceLogLevel(logLevel:Int):Void;      // Set the current threshold (minimum) log level
    @:native("MemAlloc")                                 public static function MemAlloc(size:Int):cpp.RawPointer<cpp.Void>;      // Internal memory allocator
    @:native("MemRealloc")                               public static function MemRealloc(ptr:cpp.RawPointer<cpp.Void>, size:Int):cpp.RawPointer<cpp.Void>;      // Internal memory reallocator
    @:native("MemFree")                                  public static function MemFree(ptr:cpp.RawPointer<cpp.Void>):Void;      // Internal memory free
    @:native("SetTraceLogCallback")                      public static function SetTraceLogCallback(callback:TraceLogCallback):Void;      // Set custom trace log
    @:native("SetLoadFileDataCallback")                  public static function SetLoadFileDataCallback(callback:LoadFileDataCallback):Void;      // Set custom file binary data loader
    @:native("SetSaveFileDataCallback")                  public static function SetSaveFileDataCallback(callback:SaveFileDataCallback):Void;      // Set custom file binary data saver
    @:native("SetLoadFileTextCallback")                  public static function SetLoadFileTextCallback(callback:LoadFileTextCallback):Void;      // Set custom file text data loader
    @:native("SetSaveFileTextCallback")                  public static function SetSaveFileTextCallback(callback:SaveFileTextCallback):Void;      // Set custom file text data saver
    @:native("LoadFileData")                             public static function LoadFileData(fileName:cpp.ConstCharStar, bytesRead:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Load file data as byte array (read)
    @:native("UnloadFileData")                           public static function UnloadFileData(data:cpp.RawPointer<cpp.UInt8>):Void;      // Unload file data allocated by LoadFileData()
    @:native("SaveFileData")                             public static function SaveFileData(fileName:cpp.ConstCharStar, data:cpp.RawPointer<cpp.Void>, bytesToWrite:Int):Bool;      // Save data to file from byte array (write), returns true on success
    @:native("LoadFileText")                             public static function LoadFileText(fileName:cpp.ConstCharStar):cpp.RawPointer<Int>;      // Load text data from file (read), returns a '\0' terminated string
    @:native("UnloadFileText")                           public static function UnloadFileText(text:cpp.RawPointer<Int>):Void;      // Unload file text data allocated by LoadFileText()
    @:native("SaveFileText")                             public static function SaveFileText(fileName:cpp.ConstCharStar, text:cpp.RawPointer<Int>):Bool;      // Save text data to file (write), string must be '\0' terminated, returns true on success
    @:native("FileExists")                               public static function FileExists(fileName:cpp.ConstCharStar):Bool;      // Check if file exists
    @:native("DirectoryExists")                          public static function DirectoryExists(dirPath:cpp.ConstCharStar):Bool;      // Check if a directory path exists
    @:native("IsFileExtension")                          public static function IsFileExtension(fileName:cpp.ConstCharStar, ext:cpp.ConstCharStar):Bool;      // Check file extension (including point: .png, .wav)
    @:native("GetFileExtension")                         public static function GetFileExtension(fileName:cpp.ConstCharStar):cpp.ConstCharStar;      // Get pointer to extension for a filename string (includes dot: '.png')
    @:native("GetFileName")                              public static function GetFileName(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get pointer to filename for a path string
    @:native("GetFileNameWithoutExt")                    public static function GetFileNameWithoutExt(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get filename string without extension (uses static string)
    @:native("GetDirectoryPath")                         public static function GetDirectoryPath(filePath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get full path for a given fileName with path (uses static string)
    @:native("GetPrevDirectoryPath")                     public static function GetPrevDirectoryPath(dirPath:cpp.ConstCharStar):cpp.ConstCharStar;      // Get previous directory path for a given path (uses static string)
    @:native("GetWorkingDirectory")                      public static function GetWorkingDirectory():cpp.ConstCharStar;      // Get current working directory (uses static string)
    @:native("GetDirectoryFiles")                        public static function GetDirectoryFiles(dirPath:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Get filenames in a directory path (memory should be freed)
    @:native("ClearDirectoryFiles")                      public static function ClearDirectoryFiles():Void;      // Clear directory files paths buffers (free memory)
    @:native("ChangeDirectory")                          public static function ChangeDirectory(dir:cpp.ConstCharStar):Bool;      // Change working directory, return true on success
    @:native("IsFileDropped")                            public static function IsFileDropped():Bool;      // Check if a file has been dropped into window
    @:native("GetDroppedFiles")                          public static function GetDroppedFiles(count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Get dropped files names (memory should be freed)
    @:native("ClearDroppedFiles")                        public static function ClearDroppedFiles():Void;      // Clear dropped files paths buffer (free memory)
    @:native("GetFileModTime")                           public static function GetFileModTime(fileName:cpp.ConstCharStar):Int;      // Get file modification time (last write time)
    @:native("CompressData")                             public static function CompressData(data:cpp.RawPointer<cpp.UInt8>, dataLength:Int, compDataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Compress data (DEFLATE algorithm)
    @:native("DecompressData")                           public static function DecompressData(compData:cpp.RawPointer<cpp.UInt8>, compDataLength:Int, dataLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Decompress data (DEFLATE algorithm)
    @:native("EncodeDataBase64")                         public static function EncodeDataBase64(data:cpp.RawConstPointer<cpp.UInt8>, dataLength:Int, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<Int>;      // Encode data to Base64 string
    @:native("DecodeDataBase64")                         public static function DecodeDataBase64(data:cpp.RawPointer<cpp.UInt8>, outputLength:cpp.RawPointer<Int>):cpp.RawPointer<cpp.UInt8>;      // Decode Base64 string data
    @:native("SaveStorageValue")                         public static function SaveStorageValue(position:Int, value:Int):Bool;      // Save integer value to storage file (to defined position), returns true on success
    @:native("LoadStorageValue")                         public static function LoadStorageValue(position:Int):Int;      // Load integer value from storage file (from defined position)
    @:native("OpenURL")                                  public static function OpenURL(url:cpp.ConstCharStar):Void;      // Open URL with default system browser (if available)
    @:native("IsKeyPressed")                             public static function IsKeyPressed(key:Int):Bool;      // Check if a key has been pressed once
    @:native("IsKeyDown")                                public static function IsKeyDown(key:Int):Bool;      // Check if a key is being pressed
    @:native("IsKeyReleased")                            public static function IsKeyReleased(key:Int):Bool;      // Check if a key has been released once
    @:native("IsKeyUp")                                  public static function IsKeyUp(key:Int):Bool;      // Check if a key is NOT being pressed
    @:native("SetExitKey")                               public static function SetExitKey(key:Int):Void;      // Set a custom key to exit program (default is ESC)
    @:native("GetKeyPressed")                            public static function GetKeyPressed():Int;      // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
    @:native("GetCharPressed")                           public static function GetCharPressed():Int;      // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
    @:native("IsGamepadAvailable")                       public static function IsGamepadAvailable(gamepad:Int):Bool;      // Check if a gamepad is available
    @:native("GetGamepadName")                           public static function GetGamepadName(gamepad:Int):cpp.ConstCharStar;      // Get gamepad internal name id
    @:native("IsGamepadButtonPressed")                   public static function IsGamepadButtonPressed(gamepad:Int, button:Int):Bool;      // Check if a gamepad button has been pressed once
    @:native("IsGamepadButtonDown")                      public static function IsGamepadButtonDown(gamepad:Int, button:Int):Bool;      // Check if a gamepad button is being pressed
    @:native("IsGamepadButtonReleased")                  public static function IsGamepadButtonReleased(gamepad:Int, button:Int):Bool;      // Check if a gamepad button has been released once
    @:native("IsGamepadButtonUp")                        public static function IsGamepadButtonUp(gamepad:Int, button:Int):Bool;      // Check if a gamepad button is NOT being pressed
    @:native("GetGamepadButtonPressed")                  public static function GetGamepadButtonPressed():Int;      // Get the last gamepad button pressed
    @:native("GetGamepadAxisCount")                      public static function GetGamepadAxisCount(gamepad:Int):Int;      // Get gamepad axis count for a gamepad
    @:native("GetGamepadAxisMovement")                   public static function GetGamepadAxisMovement(gamepad:Int, axis:Int):Float;      // Get axis movement value for a gamepad axis
    @:native("SetGamepadMappings")                       public static function SetGamepadMappings(mappings:cpp.ConstCharStar):Int;      // Set internal gamepad mappings (SDL_GameControllerDB)
    @:native("IsMouseButtonPressed")                     public static function IsMouseButtonPressed(button:Int):Bool;      // Check if a mouse button has been pressed once
    @:native("IsMouseButtonDown")                        public static function IsMouseButtonDown(button:Int):Bool;      // Check if a mouse button is being pressed
    @:native("IsMouseButtonReleased")                    public static function IsMouseButtonReleased(button:Int):Bool;      // Check if a mouse button has been released once
    @:native("IsMouseButtonUp")                          public static function IsMouseButtonUp(button:Int):Bool;      // Check if a mouse button is NOT being pressed
    @:native("GetMouseX")                                public static function GetMouseX():Int;      // Get mouse position X
    @:native("GetMouseY")                                public static function GetMouseY():Int;      // Get mouse position Y
    @:native("GetMousePosition")                         public static function GetMousePosition():Vector2;      // Get mouse position XY
    @:native("GetMouseDelta")                            public static function GetMouseDelta():Vector2;      // Get mouse delta between frames
    @:native("SetMousePosition")                         public static function SetMousePosition(x:Int, y:Int):Void;      // Set mouse position XY
    @:native("SetMouseOffset")                           public static function SetMouseOffset(offsetX:Int, offsetY:Int):Void;      // Set mouse offset
    @:native("SetMouseScale")                            public static function SetMouseScale(scaleX:Float, scaleY:Float):Void;      // Set mouse scaling
    @:native("GetMouseWheelMove")                        public static function GetMouseWheelMove():Float;      // Get mouse wheel movement Y
    @:native("SetMouseCursor")                           public static function SetMouseCursor(cursor:Int):Void;      // Set mouse cursor
    @:native("GetTouchX")                                public static function GetTouchX():Int;      // Get touch position X for touch point 0 (relative to screen size)
    @:native("GetTouchY")                                public static function GetTouchY():Int;      // Get touch position Y for touch point 0 (relative to screen size)
    @:native("GetTouchPosition")                         public static function GetTouchPosition(index:Int):Vector2;      // Get touch position XY for a touch point index (relative to screen size)
    @:native("GetTouchPointId")                          public static function GetTouchPointId(index:Int):Int;      // Get touch point identifier for given index
    @:native("GetTouchPointCount")                       public static function GetTouchPointCount():Int;      // Get number of touch points
    @:native("SetGesturesEnabled")                       public static function SetGesturesEnabled(flags:Int):Void;      // Enable a set of gestures using flags
    @:native("IsGestureDetected")                        public static function IsGestureDetected(gesture:Int):Bool;      // Check if a gesture have been detected
    @:native("GetGestureDetected")                       public static function GetGestureDetected():Int;      // Get latest detected gesture
    @:native("GetGestureHoldDuration")                   public static function GetGestureHoldDuration():Float;      // Get gesture hold time in milliseconds
    @:native("GetGestureDragVector")                     public static function GetGestureDragVector():Vector2;      // Get gesture drag vector
    @:native("GetGestureDragAngle")                      public static function GetGestureDragAngle():Float;      // Get gesture drag angle
    @:native("GetGesturePinchVector")                    public static function GetGesturePinchVector():Vector2;      // Get gesture pinch delta
    @:native("GetGesturePinchAngle")                     public static function GetGesturePinchAngle():Float;      // Get gesture pinch angle
    @:native("SetCameraMode")                            public static function SetCameraMode(camera:Camera, mode:Int):Void;      // Set camera mode (multiple camera modes available)
    @:native("UpdateCamera")                             public static function UpdateCamera(camera:cpp.RawPointer<Camera>):Void;      // Update camera position for selected mode
    @:native("SetCameraPanControl")                      public static function SetCameraPanControl(keyPan:Int):Void;      // Set camera pan key to combine with mouse movement (free camera)
    @:native("SetCameraAltControl")                      public static function SetCameraAltControl(keyAlt:Int):Void;      // Set camera alt key to combine with mouse movement (free camera)
    @:native("SetCameraSmoothZoomControl")               public static function SetCameraSmoothZoomControl(keySmoothZoom:Int):Void;      // Set camera smooth zoom key to combine with mouse (free camera)
    @:native("SetCameraMoveControls")                    public static function SetCameraMoveControls(keyFront:Int, keyBack:Int, keyRight:Int, keyLeft:Int, keyUp:Int, keyDown:Int):Void;      // Set camera move controls (1st person and 3rd person cameras)
    @:native("SetShapesTexture")                         public static function SetShapesTexture(texture:Texture2D, source:Rectangle):Void;      // Set texture and rectangle to be used on shapes drawing
    @:native("DrawPixel")                                public static function DrawPixel(posX:Int, posY:Int, color:Color):Void;      // Draw a pixel
    @:native("DrawPixelV")                               public static function DrawPixelV(position:Vector2, color:Color):Void;      // Draw a pixel (Vector version)
    @:native("DrawLine")                                 public static function DrawLine(startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;      // Draw a line
    @:native("DrawLineV")                                public static function DrawLineV(startPos:Vector2, endPos:Vector2, color:Color):Void;      // Draw a line (Vector version)
    @:native("DrawLineEx")                               public static function DrawLineEx(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;      // Draw a line defining thickness
    @:native("DrawLineBezier")                           public static function DrawLineBezier(startPos:Vector2, endPos:Vector2, thick:Float, color:Color):Void;      // Draw a line using cubic-bezier curves in-out
    @:native("DrawLineBezierQuad")                       public static function DrawLineBezierQuad(startPos:Vector2, endPos:Vector2, controlPos:Vector2, thick:Float, color:Color):Void;      // Draw line using quadratic bezier curves with a control point
    @:native("DrawLineBezierCubic")                      public static function DrawLineBezierCubic(startPos:Vector2, endPos:Vector2, startControlPos:Vector2, endControlPos:Vector2, thick:Float, color:Color):Void;      // Draw line using cubic bezier curves with 2 control points
    @:native("DrawLineStrip")                            public static function DrawLineStrip(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void;      // Draw lines sequence
    @:native("DrawCircle")                               public static function DrawCircle(centerX:Int, centerY:Int, radius:Float, color:Color):Void;      // Draw a color-filled circle
    @:native("DrawCircleSector")                         public static function DrawCircleSector(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;      // Draw a piece of a circle
    @:native("DrawCircleSectorLines")                    public static function DrawCircleSectorLines(center:Vector2, radius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;      // Draw circle sector outline
    @:native("DrawCircleGradient")                       public static function DrawCircleGradient(centerX:Int, centerY:Int, radius:Float, color1:Color, color2:Color):Void;      // Draw a gradient-filled circle
    @:native("DrawCircleV")                              public static function DrawCircleV(center:Vector2, radius:Float, color:Color):Void;      // Draw a color-filled circle (Vector version)
    @:native("DrawCircleLines")                          public static function DrawCircleLines(centerX:Int, centerY:Int, radius:Float, color:Color):Void;      // Draw circle outline
    @:native("DrawEllipse")                              public static function DrawEllipse(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;      // Draw ellipse
    @:native("DrawEllipseLines")                         public static function DrawEllipseLines(centerX:Int, centerY:Int, radiusH:Float, radiusV:Float, color:Color):Void;      // Draw ellipse outline
    @:native("DrawRing")                                 public static function DrawRing(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;      // Draw ring
    @:native("DrawRingLines")                            public static function DrawRingLines(center:Vector2, innerRadius:Float, outerRadius:Float, startAngle:Float, endAngle:Float, segments:Int, color:Color):Void;      // Draw ring outline
    @:native("DrawRectangle")                            public static function DrawRectangle(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;      // Draw a color-filled rectangle
    @:native("DrawRectangleV")                           public static function DrawRectangleV(position:Vector2, size:Vector2, color:Color):Void;      // Draw a color-filled rectangle (Vector version)
    @:native("DrawRectangleRec")                         public static function DrawRectangleRec(rec:Rectangle, color:Color):Void;      // Draw a color-filled rectangle
    @:native("DrawRectanglePro")                         public static function DrawRectanglePro(rec:Rectangle, origin:Vector2, rotation:Float, color:Color):Void;      // Draw a color-filled rectangle with pro parameters
    @:native("DrawRectangleGradientV")                   public static function DrawRectangleGradientV(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;      // Draw a vertical-gradient-filled rectangle
    @:native("DrawRectangleGradientH")                   public static function DrawRectangleGradientH(posX:Int, posY:Int, width:Int, height:Int, color1:Color, color2:Color):Void;      // Draw a horizontal-gradient-filled rectangle
    @:native("DrawRectangleGradientEx")                  public static function DrawRectangleGradientEx(rec:Rectangle, col1:Color, col2:Color, col3:Color, col4:Color):Void;      // Draw a gradient-filled rectangle with custom vertex colors
    @:native("DrawRectangleLines")                       public static function DrawRectangleLines(posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;      // Draw rectangle outline
    @:native("DrawRectangleLinesEx")                     public static function DrawRectangleLinesEx(rec:Rectangle, lineThick:Float, color:Color):Void;      // Draw rectangle outline with extended parameters
    @:native("DrawRectangleRounded")                     public static function DrawRectangleRounded(rec:Rectangle, roundness:Float, segments:Int, color:Color):Void;      // Draw rectangle with rounded edges
    @:native("DrawRectangleRoundedLines")                public static function DrawRectangleRoundedLines(rec:Rectangle, roundness:Float, segments:Int, lineThick:Float, color:Color):Void;      // Draw rectangle with rounded edges outline
    @:native("DrawTriangle")                             public static function DrawTriangle(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;      // Draw a color-filled triangle (vertex in counter-clockwise order!)
    @:native("DrawTriangleLines")                        public static function DrawTriangleLines(v1:Vector2, v2:Vector2, v3:Vector2, color:Color):Void;      // Draw triangle outline (vertex in counter-clockwise order!)
    @:native("DrawTriangleFan")                          public static function DrawTriangleFan(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void;      // Draw a triangle fan defined by points (first vertex is the center)
    @:native("DrawTriangleStrip")                        public static function DrawTriangleStrip(points:cpp.RawPointer<Vector2>, pointCount:Int, color:Color):Void;      // Draw a triangle strip defined by points
    @:native("DrawPoly")                                 public static function DrawPoly(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;      // Draw a regular polygon (Vector version)
    @:native("DrawPolyLines")                            public static function DrawPolyLines(center:Vector2, sides:Int, radius:Float, rotation:Float, color:Color):Void;      // Draw a polygon outline of n sides
    @:native("DrawPolyLinesEx")                          public static function DrawPolyLinesEx(center:Vector2, sides:Int, radius:Float, rotation:Float, lineThick:Float, color:Color):Void;      // Draw a polygon outline of n sides with extended parameters
    @:native("CheckCollisionRecs")                       public static function CheckCollisionRecs(rec1:Rectangle, rec2:Rectangle):Bool;      // Check collision between two rectangles
    @:native("CheckCollisionCircles")                    public static function CheckCollisionCircles(center1:Vector2, radius1:Float, center2:Vector2, radius2:Float):Bool;      // Check collision between two circles
    @:native("CheckCollisionCircleRec")                  public static function CheckCollisionCircleRec(center:Vector2, radius:Float, rec:Rectangle):Bool;      // Check collision between circle and rectangle
    @:native("CheckCollisionPointRec")                   public static function CheckCollisionPointRec(point:Vector2, rec:Rectangle):Bool;      // Check if point is inside rectangle
    @:native("CheckCollisionPointCircle")                public static function CheckCollisionPointCircle(point:Vector2, center:Vector2, radius:Float):Bool;      // Check if point is inside circle
    @:native("CheckCollisionPointTriangle")              public static function CheckCollisionPointTriangle(point:Vector2, p1:Vector2, p2:Vector2, p3:Vector2):Bool;      // Check if point is inside a triangle
    @:native("CheckCollisionLines")                      public static function CheckCollisionLines(startPos1:Vector2, endPos1:Vector2, startPos2:Vector2, endPos2:Vector2, collisionPoint:cpp.RawPointer<Vector2>):Bool;      // Check the collision between two lines defined by two points each, returns collision point by reference
    @:native("CheckCollisionPointLine")                  public static function CheckCollisionPointLine(point:Vector2, p1:Vector2, p2:Vector2, threshold:Int):Bool;      // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
    @:native("GetCollisionRec")                          public static function GetCollisionRec(rec1:Rectangle, rec2:Rectangle):Rectangle;      // Get collision rectangle for two rectangles collision
    @:native("LoadImage")                                public static function LoadImage(fileName:cpp.ConstCharStar):Image;      // Load image from file into CPU memory (RAM)
    @:native("LoadImageRaw")                             public static function LoadImageRaw(fileName:cpp.ConstCharStar, width:Int, height:Int, format:Int, headerSize:Int):Image;      // Load image from RAW file data
    @:native("LoadImageAnim")                            public static function LoadImageAnim(fileName:cpp.ConstCharStar, frames:cpp.RawPointer<Int>):Image;      // Load image sequence from file (frames appended to image.data)
    @:native("LoadImageFromMemory")                      public static function LoadImageFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Image;      // Load image from memory buffer, fileType refers to extension: i.e. '.png'
    @:native("LoadImageFromTexture")                     public static function LoadImageFromTexture(texture:Texture2D):Image;      // Load image from GPU texture data
    @:native("LoadImageFromScreen")                      public static function LoadImageFromScreen():Image;      // Load image from screen buffer and (screenshot)
    @:native("UnloadImage")                              public static function UnloadImage(image:Image):Void;      // Unload image from CPU memory (RAM)
    @:native("ExportImage")                              public static function ExportImage(image:Image, fileName:cpp.ConstCharStar):Bool;      // Export image data to file, returns true on success
    @:native("ExportImageAsCode")                        public static function ExportImageAsCode(image:Image, fileName:cpp.ConstCharStar):Bool;      // Export image as code file defining an array of bytes, returns true on success
    @:native("GenImageColor")                            public static function GenImageColor(width:Int, height:Int, color:Color):Image;      // Generate image: plain color
    @:native("GenImageGradientV")                        public static function GenImageGradientV(width:Int, height:Int, top:Color, bottom:Color):Image;      // Generate image: vertical gradient
    @:native("GenImageGradientH")                        public static function GenImageGradientH(width:Int, height:Int, left:Color, right:Color):Image;      // Generate image: horizontal gradient
    @:native("GenImageGradientRadial")                   public static function GenImageGradientRadial(width:Int, height:Int, density:Float, inner:Color, outer:Color):Image;      // Generate image: radial gradient
    @:native("GenImageChecked")                          public static function GenImageChecked(width:Int, height:Int, checksX:Int, checksY:Int, col1:Color, col2:Color):Image;      // Generate image: checked
    @:native("GenImageWhiteNoise")                       public static function GenImageWhiteNoise(width:Int, height:Int, factor:Float):Image;      // Generate image: white noise
    @:native("GenImageCellular")                         public static function GenImageCellular(width:Int, height:Int, tileSize:Int):Image;      // Generate image: cellular algorithm, bigger tileSize means bigger cells
    @:native("ImageCopy")                                public static function ImageCopy(image:Image):Image;      // Create an image duplicate (useful for transformations)
    @:native("ImageFromImage")                           public static function ImageFromImage(image:Image, rec:Rectangle):Image;      // Create an image from another image piece
    @:native("ImageText")                                public static function ImageText(text:cpp.ConstCharStar, fontSize:Int, color:Color):Image;      // Create an image from text (default font)
    @:native("ImageTextEx")                              public static function ImageTextEx(font:Font, text:cpp.ConstCharStar, fontSize:Float, spacing:Float, tint:Color):Image;      // Create an image from text (custom sprite font)
    @:native("ImageFormat")                              public static function ImageFormat(image:cpp.RawPointer<Image>, newFormat:Int):Void;      // Convert image data to desired format
    @:native("ImageToPOT")                               public static function ImageToPOT(image:cpp.RawPointer<Image>, fill:Color):Void;      // Convert image to POT (power-of-two)
    @:native("ImageCrop")                                public static function ImageCrop(image:cpp.RawPointer<Image>, crop:Rectangle):Void;      // Crop an image to a defined rectangle
    @:native("ImageAlphaCrop")                           public static function ImageAlphaCrop(image:cpp.RawPointer<Image>, threshold:Float):Void;      // Crop image depending on alpha value
    @:native("ImageAlphaClear")                          public static function ImageAlphaClear(image:cpp.RawPointer<Image>, color:Color, threshold:Float):Void;      // Clear alpha channel to desired color
    @:native("ImageAlphaMask")                           public static function ImageAlphaMask(image:cpp.RawPointer<Image>, alphaMask:Image):Void;      // Apply alpha mask to image
    @:native("ImageAlphaPremultiply")                    public static function ImageAlphaPremultiply(image:cpp.RawPointer<Image>):Void;      // Premultiply alpha channel
    @:native("ImageResize")                              public static function ImageResize(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int):Void;      // Resize image (Bicubic scaling algorithm)
    @:native("ImageResizeNN")                            public static function ImageResizeNN(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int):Void;      // Resize image (Nearest-Neighbor scaling algorithm)
    @:native("ImageResizeCanvas")                        public static function ImageResizeCanvas(image:cpp.RawPointer<Image>, newWidth:Int, newHeight:Int, offsetX:Int, offsetY:Int, fill:Color):Void;      // Resize canvas and fill with color
    @:native("ImageMipmaps")                             public static function ImageMipmaps(image:cpp.RawPointer<Image>):Void;      // Compute all mipmap levels for a provided image
    @:native("ImageDither")                              public static function ImageDither(image:cpp.RawPointer<Image>, rBpp:Int, gBpp:Int, bBpp:Int, aBpp:Int):Void;      // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
    @:native("ImageFlipVertical")                        public static function ImageFlipVertical(image:cpp.RawPointer<Image>):Void;      // Flip image vertically
    @:native("ImageFlipHorizontal")                      public static function ImageFlipHorizontal(image:cpp.RawPointer<Image>):Void;      // Flip image horizontally
    @:native("ImageRotateCW")                            public static function ImageRotateCW(image:cpp.RawPointer<Image>):Void;      // Rotate image clockwise 90deg
    @:native("ImageRotateCCW")                           public static function ImageRotateCCW(image:cpp.RawPointer<Image>):Void;      // Rotate image counter-clockwise 90deg
    @:native("ImageColorTint")                           public static function ImageColorTint(image:cpp.RawPointer<Image>, color:Color):Void;      // Modify image color: tint
    @:native("ImageColorInvert")                         public static function ImageColorInvert(image:cpp.RawPointer<Image>):Void;      // Modify image color: invert
    @:native("ImageColorGrayscale")                      public static function ImageColorGrayscale(image:cpp.RawPointer<Image>):Void;      // Modify image color: grayscale
    @:native("ImageColorContrast")                       public static function ImageColorContrast(image:cpp.RawPointer<Image>, contrast:Float):Void;      // Modify image color: contrast (-100 to 100)
    @:native("ImageColorBrightness")                     public static function ImageColorBrightness(image:cpp.RawPointer<Image>, brightness:Int):Void;      // Modify image color: brightness (-255 to 255)
    @:native("ImageColorReplace")                        public static function ImageColorReplace(image:cpp.RawPointer<Image>, color:Color, replace:Color):Void;      // Modify image color: replace color
    @:native("LoadImageColors")                          public static function LoadImageColors(image:Image):cpp.RawPointer<Color>;      // Load color data from image as a Color array (RGBA - 32bit)
    @:native("LoadImagePalette")                         public static function LoadImagePalette(image:Image, maxPaletteSize:Int, colorCount:cpp.RawPointer<Int>):cpp.RawPointer<Color>;      // Load colors palette from image as a Color array (RGBA - 32bit)
    @:native("UnloadImageColors")                        public static function UnloadImageColors(colors:cpp.RawPointer<Color>):Void;      // Unload color data loaded with LoadImageColors()
    @:native("UnloadImagePalette")                       public static function UnloadImagePalette(colors:cpp.RawPointer<Color>):Void;      // Unload colors palette loaded with LoadImagePalette()
    @:native("GetImageAlphaBorder")                      public static function GetImageAlphaBorder(image:Image, threshold:Float):Rectangle;      // Get image alpha border rectangle
    @:native("GetImageColor")                            public static function GetImageColor(image:Image, x:Int, y:Int):Color;      // Get image pixel color at (x, y) position
    @:native("ImageClearBackground")                     public static function ImageClearBackground(dst:cpp.RawPointer<Image>, color:Color):Void;      // Clear image background with given color
    @:native("ImageDrawPixel")                           public static function ImageDrawPixel(dst:cpp.RawPointer<Image>, posX:Int, posY:Int, color:Color):Void;      // Draw pixel within an image
    @:native("ImageDrawPixelV")                          public static function ImageDrawPixelV(dst:cpp.RawPointer<Image>, position:Vector2, color:Color):Void;      // Draw pixel within an image (Vector version)
    @:native("ImageDrawLine")                            public static function ImageDrawLine(dst:cpp.RawPointer<Image>, startPosX:Int, startPosY:Int, endPosX:Int, endPosY:Int, color:Color):Void;      // Draw line within an image
    @:native("ImageDrawLineV")                           public static function ImageDrawLineV(dst:cpp.RawPointer<Image>, start:Vector2, end:Vector2, color:Color):Void;      // Draw line within an image (Vector version)
    @:native("ImageDrawCircle")                          public static function ImageDrawCircle(dst:cpp.RawPointer<Image>, centerX:Int, centerY:Int, radius:Int, color:Color):Void;      // Draw circle within an image
    @:native("ImageDrawCircleV")                         public static function ImageDrawCircleV(dst:cpp.RawPointer<Image>, center:Vector2, radius:Int, color:Color):Void;      // Draw circle within an image (Vector version)
    @:native("ImageDrawRectangle")                       public static function ImageDrawRectangle(dst:cpp.RawPointer<Image>, posX:Int, posY:Int, width:Int, height:Int, color:Color):Void;      // Draw rectangle within an image
    @:native("ImageDrawRectangleV")                      public static function ImageDrawRectangleV(dst:cpp.RawPointer<Image>, position:Vector2, size:Vector2, color:Color):Void;      // Draw rectangle within an image (Vector version)
    @:native("ImageDrawRectangleRec")                    public static function ImageDrawRectangleRec(dst:cpp.RawPointer<Image>, rec:Rectangle, color:Color):Void;      // Draw rectangle within an image
    @:native("ImageDrawRectangleLines")                  public static function ImageDrawRectangleLines(dst:cpp.RawPointer<Image>, rec:Rectangle, thick:Int, color:Color):Void;      // Draw rectangle lines within an image
    @:native("ImageDraw")                                public static function ImageDraw(dst:cpp.RawPointer<Image>, src:Image, srcRec:Rectangle, dstRec:Rectangle, tint:Color):Void;      // Draw a source image within a destination image (tint applied to source)
    @:native("ImageDrawText")                            public static function ImageDrawText(dst:cpp.RawPointer<Image>, text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;      // Draw text (using default font) within an image (destination)
    @:native("ImageDrawTextEx")                          public static function ImageDrawTextEx(dst:cpp.RawPointer<Image>, font:Font, text:cpp.ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;      // Draw text (custom sprite font) within an image (destination)
    @:native("LoadTexture")                              public static function LoadTexture(fileName:cpp.ConstCharStar):Texture2D;      // Load texture from file into GPU memory (VRAM)
    @:native("LoadTextureFromImage")                     public static function LoadTextureFromImage(image:Image):Texture2D;      // Load texture from image data
    @:native("LoadTextureCubemap")                       public static function LoadTextureCubemap(image:Image, layout:Int):TextureCubemap;      // Load cubemap from image, multiple image cubemap layouts supported
    @:native("LoadRenderTexture")                        public static function LoadRenderTexture(width:Int, height:Int):RenderTexture2D;      // Load texture for rendering (framebuffer)
    @:native("UnloadTexture")                            public static function UnloadTexture(texture:Texture2D):Void;      // Unload texture from GPU memory (VRAM)
    @:native("UnloadRenderTexture")                      public static function UnloadRenderTexture(target:RenderTexture2D):Void;      // Unload render texture from GPU memory (VRAM)
    @:native("UpdateTexture")                            public static function UpdateTexture(texture:Texture2D, pixels:cpp.RawConstPointer<cpp.Void>):Void;      // Update GPU texture with new data
    @:native("UpdateTextureRec")                         public static function UpdateTextureRec(texture:Texture2D, rec:Rectangle, pixels:cpp.RawConstPointer<cpp.Void>):Void;      // Update GPU texture rectangle with new data
    @:native("GenTextureMipmaps")                        public static function GenTextureMipmaps(texture:cpp.RawPointer<Texture2D>):Void;      // Generate GPU mipmaps for a texture
    @:native("SetTextureFilter")                         public static function SetTextureFilter(texture:Texture2D, filter:Int):Void;      // Set texture scaling filter mode
    @:native("SetTextureWrap")                           public static function SetTextureWrap(texture:Texture2D, wrap:Int):Void;      // Set texture wrapping mode
    @:native("DrawTexture")                              public static function DrawTexture(texture:Texture2D, posX:Int, posY:Int, tint:Color):Void;      // Draw a Texture2D
    @:native("DrawTextureV")                             public static function DrawTextureV(texture:Texture2D, position:Vector2, tint:Color):Void;      // Draw a Texture2D with position defined as Vector2
    @:native("DrawTextureEx")                            public static function DrawTextureEx(texture:Texture2D, position:Vector2, rotation:Float, scale:Float, tint:Color):Void;      // Draw a Texture2D with extended parameters
    @:native("DrawTextureRec")                           public static function DrawTextureRec(texture:Texture2D, source:Rectangle, position:Vector2, tint:Color):Void;      // Draw a part of a texture defined by a rectangle
    @:native("DrawTextureQuad")                          public static function DrawTextureQuad(texture:Texture2D, tiling:Vector2, offset:Vector2, quad:Rectangle, tint:Color):Void;      // Draw texture quad with tiling and offset parameters
    @:native("DrawTextureTiled")                         public static function DrawTextureTiled(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float, scale:Float, tint:Color):Void;      // Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.
    @:native("DrawTexturePro")                           public static function DrawTexturePro(texture:Texture2D, source:Rectangle, dest:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void;      // Draw a part of a texture defined by a rectangle with 'pro' parameters
    @:native("DrawTextureNPatch")                        public static function DrawTextureNPatch(texture:Texture2D, nPatchInfo:NPatchInfo, dest:Rectangle, origin:Vector2, rotation:Float, tint:Color):Void;      // Draws a texture (or part of it) that stretches or shrinks nicely
    @:native("DrawTexturePoly")                          public static function DrawTexturePoly(texture:Texture2D, center:Vector2, points:cpp.RawPointer<Vector2>, texcoords:cpp.RawPointer<Vector2>, pointCount:Int, tint:Color):Void;      // Draw a textured polygon
    @:native("Fade")                                     public static function Fade(color:Color, alpha:Float):Color;      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
    @:native("ColorToInt")                               public static function ColorToInt(color:Color):Int;      // Get hexadecimal value for a Color
    @:native("ColorNormalize")                           public static function ColorNormalize(color:Color):Vector4;      // Get Color normalized as float [0..1]
    @:native("ColorFromNormalized")                      public static function ColorFromNormalized(normalized:Vector4):Color;      // Get Color from normalized values [0..1]
    @:native("ColorToHSV")                               public static function ColorToHSV(color:Color):Vector3;      // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
    @:native("ColorFromHSV")                             public static function ColorFromHSV(hue:Float, saturation:Float, value:Float):Color;      // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
    @:native("ColorAlpha")                               public static function ColorAlpha(color:Color, alpha:Float):Color;      // Get color with alpha applied, alpha goes from 0.0f to 1.0f
    @:native("ColorAlphaBlend")                          public static function ColorAlphaBlend(dst:Color, src:Color, tint:Color):Color;      // Get src alpha-blended into dst color with tint
    @:native("GetColor")                                 public static function GetColor(hexValue:Int):Color;      // Get Color structure from hexadecimal value
    @:native("GetPixelColor")                            public static function GetPixelColor(srcPtr:cpp.RawPointer<cpp.Void>, format:Int):Color;      // Get Color from a source pixel pointer of certain format
    @:native("SetPixelColor")                            public static function SetPixelColor(dstPtr:cpp.RawPointer<cpp.Void>, color:Color, format:Int):Void;      // Set color formatted into destination pixel pointer
    @:native("GetPixelDataSize")                         public static function GetPixelDataSize(width:Int, height:Int, format:Int):Int;      // Get pixel data size in bytes for certain format
    @:native("GetFontDefault")                           public static function GetFontDefault():Font;      // Get the default Font
    @:native("LoadFont")                                 public static function LoadFont(fileName:cpp.ConstCharStar):Font;      // Load font from file into GPU memory (VRAM)
    @:native("LoadFontEx")                               public static function LoadFontEx(fileName:cpp.ConstCharStar, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):Font;      // Load font from file with extended parameters
    @:native("LoadFontFromImage")                        public static function LoadFontFromImage(image:Image, key:Color, firstChar:Int):Font;      // Load font from Image (XNA style)
    @:native("LoadFontFromMemory")                       public static function LoadFontFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int):Font;      // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
    @:native("LoadFontData")                             public static function LoadFontData(fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int, fontSize:Int, fontChars:cpp.RawPointer<Int>, glyphCount:Int, type:Int):cpp.RawPointer<GlyphInfo>;      // Load font data for further use
    @:native("GenImageFontAtlas")                        public static function GenImageFontAtlas(chars:cpp.RawConstPointer<GlyphInfo>, recs:cpp.RawPointer<cpp.RawPointer<Rectangle>>, glyphCount:Int, fontSize:Int, padding:Int, packMethod:Int):Image;      // Generate image font atlas using chars info
    @:native("UnloadFontData")                           public static function UnloadFontData(chars:cpp.RawPointer<GlyphInfo>, glyphCount:Int):Void;      // Unload font chars info data (RAM)
    @:native("UnloadFont")                               public static function UnloadFont(font:Font):Void;      // Unload Font from GPU memory (VRAM)
    @:native("DrawFPS")                                  public static function DrawFPS(posX:Int, posY:Int):Void;      // Draw current FPS
    @:native("DrawText")                                 public static function DrawText(text:cpp.ConstCharStar, posX:Int, posY:Int, fontSize:Int, color:Color):Void;      // Draw text (using default font)
    @:native("DrawTextEx")                               public static function DrawTextEx(font:Font, text:cpp.ConstCharStar, position:Vector2, fontSize:Float, spacing:Float, tint:Color):Void;      // Draw text using font and additional parameters
    @:native("DrawTextPro")                              public static function DrawTextPro(font:Font, text:cpp.ConstCharStar, position:Vector2, origin:Vector2, rotation:Float, fontSize:Float, spacing:Float, tint:Color):Void;      // Draw text using Font and pro parameters (rotation)
    @:native("DrawTextCodepoint")                        public static function DrawTextCodepoint(font:Font, codepoint:Int, position:Vector2, fontSize:Float, tint:Color):Void;      // Draw one character (codepoint)
    @:native("MeasureText")                              public static function MeasureText(text:cpp.ConstCharStar, fontSize:Int):Int;      // Measure string width for default font
    @:native("MeasureTextEx")                            public static function MeasureTextEx(font:Font, text:cpp.ConstCharStar, fontSize:Float, spacing:Float):Vector2;      // Measure string size for Font
    @:native("GetGlyphIndex")                            public static function GetGlyphIndex(font:Font, codepoint:Int):Int;      // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
    @:native("GetGlyphInfo")                             public static function GetGlyphInfo(font:Font, codepoint:Int):GlyphInfo;      // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
    @:native("GetGlyphAtlasRec")                         public static function GetGlyphAtlasRec(font:Font, codepoint:Int):Rectangle;      // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
    @:native("LoadCodepoints")                           public static function LoadCodepoints(text:cpp.ConstCharStar, count:cpp.RawPointer<Int>):cpp.RawPointer<Int>;      // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
    @:native("UnloadCodepoints")                         public static function UnloadCodepoints(codepoints:cpp.RawPointer<Int>):Void;      // Unload codepoints data from memory
    @:native("GetCodepointCount")                        public static function GetCodepointCount(text:cpp.ConstCharStar):Int;      // Get total number of codepoints in a UTF-8 encoded string
    @:native("GetCodepoint")                             public static function GetCodepoint(text:cpp.ConstCharStar, bytesProcessed:cpp.RawPointer<Int>):Int;      // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
    @:native("CodepointToUTF8")                          public static function CodepointToUTF8(codepoint:Int, byteSize:cpp.RawPointer<Int>):cpp.ConstCharStar;      // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
    @:native("TextCodepointsToUTF8")                     public static function TextCodepointsToUTF8(codepoints:cpp.RawPointer<Int>, length:Int):cpp.RawPointer<Int>;      // Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)
    @:native("TextCopy")                                 public static function TextCopy(dst:cpp.RawPointer<Int>, src:cpp.ConstCharStar):Int;      // Copy one string to another, returns bytes copied
    @:native("TextIsEqual")                              public static function TextIsEqual(text1:cpp.ConstCharStar, text2:cpp.ConstCharStar):Bool;      // Check if two text string are equal
    @:native("TextLength")                               public static function TextLength(text:cpp.ConstCharStar):Int;      // Get text length, checks for '\0' ending
    @:native("TextFormat")                               public static function TextFormat(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Text formatting with variables (sprintf() style)
    @:native("TextSubtext")                              public static function TextSubtext(text:cpp.ConstCharStar, position:Int, length:Int):cpp.ConstCharStar;      // Get a piece of a text string
    @:native("TextReplace")                              public static function TextReplace(text:cpp.RawPointer<Int>, replace:cpp.ConstCharStar, by:cpp.ConstCharStar):cpp.RawPointer<Int>;      // Replace text string (WARNING: memory must be freed!)
    @:native("TextInsert")                               public static function TextInsert(text:cpp.ConstCharStar, insert:cpp.ConstCharStar, position:Int):cpp.RawPointer<Int>;      // Insert text in a position (WARNING: memory must be freed!)
    @:native("TextJoin")                                 public static function TextJoin(textList:cpp.RawPointer<cpp.RawPointer<Int>>, count:Int, delimiter:cpp.ConstCharStar):cpp.ConstCharStar;      // Join text strings with delimiter
    @:native("TextSplit")                                public static function TextSplit(text:cpp.ConstCharStar, delimiter:Int, count:cpp.RawPointer<Int>):cpp.RawPointer<cpp.RawPointer<Int>>;      // Split text into multiple strings
    @:native("TextAppend")                               public static function TextAppend(text:cpp.RawPointer<Int>, append:cpp.ConstCharStar, position:cpp.RawPointer<Int>):Void;      // Append text at specific position and move cursor!
    @:native("TextFindIndex")                            public static function TextFindIndex(text:cpp.ConstCharStar, find:cpp.ConstCharStar):Int;      // Find first text occurrence within a string
    @:native("TextToUpper")                              public static function TextToUpper(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get upper case version of provided string
    @:native("TextToLower")                              public static function TextToLower(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get lower case version of provided string
    @:native("TextToPascal")                             public static function TextToPascal(text:cpp.ConstCharStar):cpp.ConstCharStar;      // Get Pascal case notation version of provided string
    @:native("TextToInteger")                            public static function TextToInteger(text:cpp.ConstCharStar):Int;      // Get integer value from text (negative values not supported)
    @:native("DrawLine3D")                               public static function DrawLine3D(startPos:Vector3, endPos:Vector3, color:Color):Void;      // Draw a line in 3D world space
    @:native("DrawPoint3D")                              public static function DrawPoint3D(position:Vector3, color:Color):Void;      // Draw a point in 3D space, actually a small line
    @:native("DrawCircle3D")                             public static function DrawCircle3D(center:Vector3, radius:Float, rotationAxis:Vector3, rotationAngle:Float, color:Color):Void;      // Draw a circle in 3D world space
    @:native("DrawTriangle3D")                           public static function DrawTriangle3D(v1:Vector3, v2:Vector3, v3:Vector3, color:Color):Void;      // Draw a color-filled triangle (vertex in counter-clockwise order!)
    @:native("DrawTriangleStrip3D")                      public static function DrawTriangleStrip3D(points:cpp.RawPointer<Vector3>, pointCount:Int, color:Color):Void;      // Draw a triangle strip defined by points
    @:native("DrawCube")                                 public static function DrawCube(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;      // Draw cube
    @:native("DrawCubeV")                                public static function DrawCubeV(position:Vector3, size:Vector3, color:Color):Void;      // Draw cube (Vector version)
    @:native("DrawCubeWires")                            public static function DrawCubeWires(position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;      // Draw cube wires
    @:native("DrawCubeWiresV")                           public static function DrawCubeWiresV(position:Vector3, size:Vector3, color:Color):Void;      // Draw cube wires (Vector version)
    @:native("DrawCubeTexture")                          public static function DrawCubeTexture(texture:Texture2D, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;      // Draw cube textured
    @:native("DrawCubeTextureRec")                       public static function DrawCubeTextureRec(texture:Texture2D, source:Rectangle, position:Vector3, width:Float, height:Float, length:Float, color:Color):Void;      // Draw cube with a region of a texture
    @:native("DrawSphere")                               public static function DrawSphere(centerPos:Vector3, radius:Float, color:Color):Void;      // Draw sphere
    @:native("DrawSphereEx")                             public static function DrawSphereEx(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;      // Draw sphere with extended parameters
    @:native("DrawSphereWires")                          public static function DrawSphereWires(centerPos:Vector3, radius:Float, rings:Int, slices:Int, color:Color):Void;      // Draw sphere wires
    @:native("DrawCylinder")                             public static function DrawCylinder(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;      // Draw a cylinder/cone
    @:native("DrawCylinderEx")                           public static function DrawCylinderEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int, color:Color):Void;      // Draw a cylinder with base at startPos and top at endPos
    @:native("DrawCylinderWires")                        public static function DrawCylinderWires(position:Vector3, radiusTop:Float, radiusBottom:Float, height:Float, slices:Int, color:Color):Void;      // Draw a cylinder/cone wires
    @:native("DrawCylinderWiresEx")                      public static function DrawCylinderWiresEx(startPos:Vector3, endPos:Vector3, startRadius:Float, endRadius:Float, sides:Int, color:Color):Void;      // Draw a cylinder wires with base at startPos and top at endPos
    @:native("DrawPlane")                                public static function DrawPlane(centerPos:Vector3, size:Vector2, color:Color):Void;      // Draw a plane XZ
    @:native("DrawRay")                                  public static function DrawRay(ray:Ray, color:Color):Void;      // Draw a ray line
    @:native("DrawGrid")                                 public static function DrawGrid(slices:Int, spacing:Float):Void;      // Draw a grid (centered at (0, 0, 0))
    @:native("LoadModel")                                public static function LoadModel(fileName:cpp.ConstCharStar):Model;      // Load model from files (meshes and materials)
    @:native("LoadModelFromMesh")                        public static function LoadModelFromMesh(mesh:Mesh):Model;      // Load model from generated mesh (default material)
    @:native("UnloadModel")                              public static function UnloadModel(model:Model):Void;      // Unload model (including meshes) from memory (RAM and/or VRAM)
    @:native("UnloadModelKeepMeshes")                    public static function UnloadModelKeepMeshes(model:Model):Void;      // Unload model (but not meshes) from memory (RAM and/or VRAM)
    @:native("GetModelBoundingBox")                      public static function GetModelBoundingBox(model:Model):BoundingBox;      // Compute model bounding box limits (considers all meshes)
    @:native("DrawModel")                                public static function DrawModel(model:Model, position:Vector3, scale:Float, tint:Color):Void;      // Draw a model (with texture if set)
    @:native("DrawModelEx")                              public static function DrawModelEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void;      // Draw a model with extended parameters
    @:native("DrawModelWires")                           public static function DrawModelWires(model:Model, position:Vector3, scale:Float, tint:Color):Void;      // Draw a model wires (with texture if set)
    @:native("DrawModelWiresEx")                         public static function DrawModelWiresEx(model:Model, position:Vector3, rotationAxis:Vector3, rotationAngle:Float, scale:Vector3, tint:Color):Void;      // Draw a model wires (with texture if set) with extended parameters
    @:native("DrawBoundingBox")                          public static function DrawBoundingBox(box:BoundingBox, color:Color):Void;      // Draw bounding box (wires)
    @:native("DrawBillboard")                            public static function DrawBillboard(camera:Camera, texture:Texture2D, position:Vector3, size:Float, tint:Color):Void;      // Draw a billboard texture
    @:native("DrawBillboardRec")                         public static function DrawBillboardRec(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, size:Vector2, tint:Color):Void;      // Draw a billboard texture defined by source
    @:native("DrawBillboardPro")                         public static function DrawBillboardPro(camera:Camera, texture:Texture2D, source:Rectangle, position:Vector3, up:Vector3, size:Vector2, origin:Vector2, rotation:Float, tint:Color):Void;      // Draw a billboard texture defined by source and rotation
    @:native("UploadMesh")                               public static function UploadMesh(mesh:cpp.RawPointer<Mesh>, dyn:Bool):Void;      // Upload mesh vertex data in GPU and provide VAO/VBO ids
    @:native("UpdateMeshBuffer")                         public static function UpdateMeshBuffer(mesh:Mesh, index:Int, data:cpp.RawPointer<cpp.Void>, dataSize:Int, offset:Int):Void;      // Update mesh vertex data in GPU for a specific buffer index
    @:native("UnloadMesh")                               public static function UnloadMesh(mesh:Mesh):Void;      // Unload mesh data from CPU and GPU
    @:native("DrawMesh")                                 public static function DrawMesh(mesh:Mesh, material:Material, transform:Matrix):Void;      // Draw a 3d mesh with material and transform
    @:native("DrawMeshInstanced")                        public static function DrawMeshInstanced(mesh:Mesh, material:Material, transforms:cpp.RawPointer<Matrix>, instances:Int):Void;      // Draw multiple mesh instances with material and different transforms
    @:native("ExportMesh")                               public static function ExportMesh(mesh:Mesh, fileName:cpp.ConstCharStar):Bool;      // Export mesh data to file, returns true on success
    @:native("GetMeshBoundingBox")                       public static function GetMeshBoundingBox(mesh:Mesh):BoundingBox;      // Compute mesh bounding box limits
    @:native("GenMeshTangents")                          public static function GenMeshTangents(mesh:cpp.RawPointer<Mesh>):Void;      // Compute mesh tangents
    @:native("GenMeshBinormals")                         public static function GenMeshBinormals(mesh:cpp.RawPointer<Mesh>):Void;      // Compute mesh binormals
    @:native("GenMeshPoly")                              public static function GenMeshPoly(sides:Int, radius:Float):Mesh;      // Generate polygonal mesh
    @:native("GenMeshPlane")                             public static function GenMeshPlane(width:Float, length:Float, resX:Int, resZ:Int):Mesh;      // Generate plane mesh (with subdivisions)
    @:native("GenMeshCube")                              public static function GenMeshCube(width:Float, height:Float, length:Float):Mesh;      // Generate cuboid mesh
    @:native("GenMeshSphere")                            public static function GenMeshSphere(radius:Float, rings:Int, slices:Int):Mesh;      // Generate sphere mesh (standard sphere)
    @:native("GenMeshHemiSphere")                        public static function GenMeshHemiSphere(radius:Float, rings:Int, slices:Int):Mesh;      // Generate half-sphere mesh (no bottom cap)
    @:native("GenMeshCylinder")                          public static function GenMeshCylinder(radius:Float, height:Float, slices:Int):Mesh;      // Generate cylinder mesh
    @:native("GenMeshCone")                              public static function GenMeshCone(radius:Float, height:Float, slices:Int):Mesh;      // Generate cone/pyramid mesh
    @:native("GenMeshTorus")                             public static function GenMeshTorus(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;      // Generate torus mesh
    @:native("GenMeshKnot")                              public static function GenMeshKnot(radius:Float, size:Float, radSeg:Int, sides:Int):Mesh;      // Generate trefoil knot mesh
    @:native("GenMeshHeightmap")                         public static function GenMeshHeightmap(heightmap:Image, size:Vector3):Mesh;      // Generate heightmap mesh from image data
    @:native("GenMeshCubicmap")                          public static function GenMeshCubicmap(cubicmap:Image, cubeSize:Vector3):Mesh;      // Generate cubes-based map mesh from image data
    @:native("LoadMaterials")                            public static function LoadMaterials(fileName:cpp.ConstCharStar, materialCount:cpp.RawPointer<Int>):cpp.RawPointer<Material>;      // Load materials from model file
    @:native("LoadMaterialDefault")                      public static function LoadMaterialDefault():Material;      // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
    @:native("UnloadMaterial")                           public static function UnloadMaterial(material:Material):Void;      // Unload material from GPU memory (VRAM)
    @:native("SetMaterialTexture")                       public static function SetMaterialTexture(material:cpp.RawPointer<Material>, mapType:Int, texture:Texture2D):Void;      // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
    @:native("SetModelMeshMaterial")                     public static function SetModelMeshMaterial(model:cpp.RawPointer<Model>, meshId:Int, materialId:Int):Void;      // Set material for a mesh
    @:native("LoadModelAnimations")                      public static function LoadModelAnimations(fileName:cpp.ConstCharStar, animCount:cpp.RawPointer<Int>):cpp.RawPointer<ModelAnimation>;      // Load model animations from file
    @:native("UpdateModelAnimation")                     public static function UpdateModelAnimation(model:Model, anim:ModelAnimation, frame:Int):Void;      // Update model animation pose
    @:native("UnloadModelAnimation")                     public static function UnloadModelAnimation(anim:ModelAnimation):Void;      // Unload animation data
    @:native("UnloadModelAnimations")                    public static function UnloadModelAnimations(animations:cpp.RawPointer<ModelAnimation>, count:Int):Void;      // Unload animation array data
    @:native("IsModelAnimationValid")                    public static function IsModelAnimationValid(model:Model, anim:ModelAnimation):Bool;      // Check model animation skeleton match
    @:native("CheckCollisionSpheres")                    public static function CheckCollisionSpheres(center1:Vector3, radius1:Float, center2:Vector3, radius2:Float):Bool;      // Check collision between two spheres
    @:native("CheckCollisionBoxes")                      public static function CheckCollisionBoxes(box1:BoundingBox, box2:BoundingBox):Bool;      // Check collision between two bounding boxes
    @:native("CheckCollisionBoxSphere")                  public static function CheckCollisionBoxSphere(box:BoundingBox, center:Vector3, radius:Float):Bool;      // Check collision between box and sphere
    @:native("GetRayCollisionSphere")                    public static function GetRayCollisionSphere(ray:Ray, center:Vector3, radius:Float):RayCollision;      // Get collision info between ray and sphere
    @:native("GetRayCollisionBox")                       public static function GetRayCollisionBox(ray:Ray, box:BoundingBox):RayCollision;      // Get collision info between ray and box
    @:native("GetRayCollisionModel")                     public static function GetRayCollisionModel(ray:Ray, model:Model):RayCollision;      // Get collision info between ray and model
    @:native("GetRayCollisionMesh")                      public static function GetRayCollisionMesh(ray:Ray, mesh:Mesh, transform:Matrix):RayCollision;      // Get collision info between ray and mesh
    @:native("GetRayCollisionTriangle")                  public static function GetRayCollisionTriangle(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3):RayCollision;      // Get collision info between ray and triangle
    @:native("GetRayCollisionQuad")                      public static function GetRayCollisionQuad(ray:Ray, p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):RayCollision;      // Get collision info between ray and quad
    @:native("InitAudioDevice")                          public static function InitAudioDevice():Void;      // Initialize audio device and context
    @:native("CloseAudioDevice")                         public static function CloseAudioDevice():Void;      // Close the audio device and context
    @:native("IsAudioDeviceReady")                       public static function IsAudioDeviceReady():Bool;      // Check if audio device has been initialized successfully
    @:native("SetMasterVolume")                          public static function SetMasterVolume(volume:Float):Void;      // Set master volume (listener)
    @:native("LoadWave")                                 public static function LoadWave(fileName:cpp.ConstCharStar):Wave;      // Load wave data from file
    @:native("LoadWaveFromMemory")                       public static function LoadWaveFromMemory(fileType:cpp.ConstCharStar, fileData:cpp.RawConstPointer<cpp.UInt8>, dataSize:Int):Wave;      // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
    @:native("LoadSound")                                public static function LoadSound(fileName:cpp.ConstCharStar):Sound;      // Load sound from file
    @:native("LoadSoundFromWave")                        public static function LoadSoundFromWave(wave:Wave):Sound;      // Load sound from wave data
    @:native("UpdateSound")                              public static function UpdateSound(sound:Sound, data:cpp.RawConstPointer<cpp.Void>, sampleCount:Int):Void;      // Update sound buffer with new data
    @:native("UnloadWave")                               public static function UnloadWave(wave:Wave):Void;      // Unload wave data
    @:native("UnloadSound")                              public static function UnloadSound(sound:Sound):Void;      // Unload sound
    @:native("ExportWave")                               public static function ExportWave(wave:Wave, fileName:cpp.ConstCharStar):Bool;      // Export wave data to file, returns true on success
    @:native("ExportWaveAsCode")                         public static function ExportWaveAsCode(wave:Wave, fileName:cpp.ConstCharStar):Bool;      // Export wave sample data to code (.h), returns true on success
    @:native("PlaySound")                                public static function PlaySound(sound:Sound):Void;      // Play a sound
    @:native("StopSound")                                public static function StopSound(sound:Sound):Void;      // Stop playing a sound
    @:native("PauseSound")                               public static function PauseSound(sound:Sound):Void;      // Pause a sound
    @:native("ResumeSound")                              public static function ResumeSound(sound:Sound):Void;      // Resume a paused sound
    @:native("PlaySoundMulti")                           public static function PlaySoundMulti(sound:Sound):Void;      // Play a sound (using multichannel buffer pool)
    @:native("StopSoundMulti")                           public static function StopSoundMulti():Void;      // Stop any sound playing (using multichannel buffer pool)
    @:native("GetSoundsPlaying")                         public static function GetSoundsPlaying():Int;      // Get number of sounds playing in the multichannel
    @:native("IsSoundPlaying")                           public static function IsSoundPlaying(sound:Sound):Bool;      // Check if a sound is currently playing
    @:native("SetSoundVolume")                           public static function SetSoundVolume(sound:Sound, volume:Float):Void;      // Set volume for a sound (1.0 is max level)
    @:native("SetSoundPitch")                            public static function SetSoundPitch(sound:Sound, pitch:Float):Void;      // Set pitch for a sound (1.0 is base level)
    @:native("WaveFormat")                               public static function WaveFormat(wave:cpp.RawPointer<Wave>, sampleRate:Int, sampleSize:Int, channels:Int):Void;      // Convert wave data to desired format
    @:native("WaveCopy")                                 public static function WaveCopy(wave:Wave):Wave;      // Copy a wave to a new wave
    @:native("WaveCrop")                                 public static function WaveCrop(wave:cpp.RawPointer<Wave>, initSample:Int, finalSample:Int):Void;      // Crop a wave to defined samples range
    @:native("LoadWaveSamples")                          public static function LoadWaveSamples(wave:Wave):cpp.RawPointer<Float>;      // Load samples data from wave as a floats array
    @:native("UnloadWaveSamples")                        public static function UnloadWaveSamples(samples:cpp.RawPointer<Float>):Void;      // Unload samples data loaded with LoadWaveSamples()
    @:native("LoadMusicStream")                          public static function LoadMusicStream(fileName:cpp.ConstCharStar):Music;      // Load music stream from file
    @:native("LoadMusicStreamFromMemory")                public static function LoadMusicStreamFromMemory(fileType:cpp.ConstCharStar, data:cpp.RawPointer<cpp.UInt8>, dataSize:Int):Music;      // Load music stream from data
    @:native("UnloadMusicStream")                        public static function UnloadMusicStream(music:Music):Void;      // Unload music stream
    @:native("PlayMusicStream")                          public static function PlayMusicStream(music:Music):Void;      // Start music playing
    @:native("IsMusicStreamPlaying")                     public static function IsMusicStreamPlaying(music:Music):Bool;      // Check if music is playing
    @:native("UpdateMusicStream")                        public static function UpdateMusicStream(music:Music):Void;      // Updates buffers for music streaming
    @:native("StopMusicStream")                          public static function StopMusicStream(music:Music):Void;      // Stop music playing
    @:native("PauseMusicStream")                         public static function PauseMusicStream(music:Music):Void;      // Pause music playing
    @:native("ResumeMusicStream")                        public static function ResumeMusicStream(music:Music):Void;      // Resume playing paused music
    @:native("SeekMusicStream")                          public static function SeekMusicStream(music:Music, position:Float):Void;      // Seek music to a position (in seconds)
    @:native("SetMusicVolume")                           public static function SetMusicVolume(music:Music, volume:Float):Void;      // Set volume for music (1.0 is max level)
    @:native("SetMusicPitch")                            public static function SetMusicPitch(music:Music, pitch:Float):Void;      // Set pitch for a music (1.0 is base level)
    @:native("GetMusicTimeLength")                       public static function GetMusicTimeLength(music:Music):Float;      // Get music time length (in seconds)
    @:native("GetMusicTimePlayed")                       public static function GetMusicTimePlayed(music:Music):Float;      // Get current music time played (in seconds)
    @:native("LoadAudioStream")                          public static function LoadAudioStream(sampleRate:Int, sampleSize:Int, channels:Int):AudioStream;      // Load audio stream (to stream raw audio pcm data)
    @:native("UnloadAudioStream")                        public static function UnloadAudioStream(stream:AudioStream):Void;      // Unload audio stream and free memory
    @:native("UpdateAudioStream")                        public static function UpdateAudioStream(stream:AudioStream, data:cpp.RawConstPointer<cpp.Void>, frameCount:Int):Void;      // Update audio stream buffers with data
    @:native("IsAudioStreamProcessed")                   public static function IsAudioStreamProcessed(stream:AudioStream):Bool;      // Check if any audio stream buffers requires refill
    @:native("PlayAudioStream")                          public static function PlayAudioStream(stream:AudioStream):Void;      // Play audio stream
    @:native("PauseAudioStream")                         public static function PauseAudioStream(stream:AudioStream):Void;      // Pause audio stream
    @:native("ResumeAudioStream")                        public static function ResumeAudioStream(stream:AudioStream):Void;      // Resume audio stream
    @:native("IsAudioStreamPlaying")                     public static function IsAudioStreamPlaying(stream:AudioStream):Bool;      // Check if audio stream is playing
    @:native("StopAudioStream")                          public static function StopAudioStream(stream:AudioStream):Void;      // Stop audio stream
    @:native("SetAudioStreamVolume")                     public static function SetAudioStreamVolume(stream:AudioStream, volume:Float):Void;      // Set volume for audio stream (1.0 is max level)
    @:native("SetAudioStreamPitch")                      public static function SetAudioStreamPitch(stream:AudioStream, pitch:Float):Void;      // Set pitch for audio stream (1.0 is base level)
    @:native("SetAudioStreamBufferSizeDefault")          public static function SetAudioStreamBufferSizeDefault(size:Int):Void;      // Default size for new audio streams
}

@:include("raylib.h")
extern enum abstract ConfigFlags(Int) from Int to Int {
    @:native("FLAG_VSYNC_HINT")                          public static var VSYNC_HINT:Int;
    @:native("FLAG_FULLSCREEN_MODE")                     public static var FULLSCREEN_MODE:Int;
    @:native("FLAG_WINDOW_RESIZABLE")                    public static var WINDOW_RESIZABLE:Int;
    @:native("FLAG_WINDOW_UNDECORATED")                  public static var WINDOW_UNDECORATED:Int;
    @:native("FLAG_WINDOW_HIDDEN")                       public static var WINDOW_HIDDEN:Int;
    @:native("FLAG_WINDOW_MINIMIZED")                    public static var WINDOW_MINIMIZED:Int;
    @:native("FLAG_WINDOW_MAXIMIZED")                    public static var WINDOW_MAXIMIZED:Int;
    @:native("FLAG_WINDOW_UNFOCUSED")                    public static var WINDOW_UNFOCUSED:Int;
    @:native("FLAG_WINDOW_TOPMOST")                      public static var WINDOW_TOPMOST:Int;
    @:native("FLAG_WINDOW_ALWAYS_RUN")                   public static var WINDOW_ALWAYS_RUN:Int;
    @:native("FLAG_WINDOW_TRANSPARENT")                  public static var WINDOW_TRANSPARENT:Int;
    @:native("FLAG_WINDOW_HIGHDPI")                      public static var WINDOW_HIGHDPI:Int;
    @:native("FLAG_MSAA_4X_HINT")                        public static var MSAA_4X_HINT:Int;
    @:native("FLAG_INTERLACED_HINT")                     public static var INTERLACED_HINT:Int;
}

@:include("raylib.h")
extern enum abstract TraceLogLevel(Int) from Int to Int {
    @:native("LOG_ALL")                                  public static var ALL:Int;
    @:native("LOG_TRACE")                                public static var TRACE:Int;
    @:native("LOG_DEBUG")                                public static var DEBUG:Int;
    @:native("LOG_INFO")                                 public static var INFO:Int;
    @:native("LOG_WARNING")                              public static var WARNING:Int;
    @:native("LOG_ERROR")                                public static var ERROR:Int;
    @:native("LOG_FATAL")                                public static var FATAL:Int;
    @:native("LOG_NONE")                                 public static var NONE:Int;
}

@:include("raylib.h")
extern enum abstract KeyboardKey(Int) from Int to Int {
    @:native("KEY_NULL")                                 public static var NULL:Int;
    @:native("KEY_APOSTROPHE")                           public static var APOSTROPHE:Int;
    @:native("KEY_COMMA")                                public static var COMMA:Int;
    @:native("KEY_MINUS")                                public static var MINUS:Int;
    @:native("KEY_PERIOD")                               public static var PERIOD:Int;
    @:native("KEY_SLASH")                                public static var SLASH:Int;
    @:native("KEY_ZERO")                                 public static var ZERO:Int;
    @:native("KEY_ONE")                                  public static var ONE:Int;
    @:native("KEY_TWO")                                  public static var TWO:Int;
    @:native("KEY_THREE")                                public static var THREE:Int;
    @:native("KEY_FOUR")                                 public static var FOUR:Int;
    @:native("KEY_FIVE")                                 public static var FIVE:Int;
    @:native("KEY_SIX")                                  public static var SIX:Int;
    @:native("KEY_SEVEN")                                public static var SEVEN:Int;
    @:native("KEY_EIGHT")                                public static var EIGHT:Int;
    @:native("KEY_NINE")                                 public static var NINE:Int;
    @:native("KEY_SEMICOLON")                            public static var SEMICOLON:Int;
    @:native("KEY_EQUAL")                                public static var EQUAL:Int;
    @:native("KEY_A")                                    public static var A:Int;
    @:native("KEY_B")                                    public static var B:Int;
    @:native("KEY_C")                                    public static var C:Int;
    @:native("KEY_D")                                    public static var D:Int;
    @:native("KEY_E")                                    public static var E:Int;
    @:native("KEY_F")                                    public static var F:Int;
    @:native("KEY_G")                                    public static var G:Int;
    @:native("KEY_H")                                    public static var H:Int;
    @:native("KEY_I")                                    public static var I:Int;
    @:native("KEY_J")                                    public static var J:Int;
    @:native("KEY_K")                                    public static var K:Int;
    @:native("KEY_L")                                    public static var L:Int;
    @:native("KEY_M")                                    public static var M:Int;
    @:native("KEY_N")                                    public static var N:Int;
    @:native("KEY_O")                                    public static var O:Int;
    @:native("KEY_P")                                    public static var P:Int;
    @:native("KEY_Q")                                    public static var Q:Int;
    @:native("KEY_R")                                    public static var R:Int;
    @:native("KEY_S")                                    public static var S:Int;
    @:native("KEY_T")                                    public static var T:Int;
    @:native("KEY_U")                                    public static var U:Int;
    @:native("KEY_V")                                    public static var V:Int;
    @:native("KEY_W")                                    public static var W:Int;
    @:native("KEY_X")                                    public static var X:Int;
    @:native("KEY_Y")                                    public static var Y:Int;
    @:native("KEY_Z")                                    public static var Z:Int;
    @:native("KEY_LEFT_BRACKET")                         public static var LEFT_BRACKET:Int;
    @:native("KEY_BACKSLASH")                            public static var BACKSLASH:Int;
    @:native("KEY_RIGHT_BRACKET")                        public static var RIGHT_BRACKET:Int;
    @:native("KEY_GRAVE")                                public static var GRAVE:Int;
    @:native("KEY_SPACE")                                public static var SPACE:Int;
    @:native("KEY_ESCAPE")                               public static var ESCAPE:Int;
    @:native("KEY_ENTER")                                public static var ENTER:Int;
    @:native("KEY_TAB")                                  public static var TAB:Int;
    @:native("KEY_BACKSPACE")                            public static var BACKSPACE:Int;
    @:native("KEY_INSERT")                               public static var INSERT:Int;
    @:native("KEY_DELETE")                               public static var DELETE:Int;
    @:native("KEY_RIGHT")                                public static var RIGHT:Int;
    @:native("KEY_LEFT")                                 public static var LEFT:Int;
    @:native("KEY_DOWN")                                 public static var DOWN:Int;
    @:native("KEY_UP")                                   public static var UP:Int;
    @:native("KEY_PAGE_UP")                              public static var PAGE_UP:Int;
    @:native("KEY_PAGE_DOWN")                            public static var PAGE_DOWN:Int;
    @:native("KEY_HOME")                                 public static var HOME:Int;
    @:native("KEY_END")                                  public static var END:Int;
    @:native("KEY_CAPS_LOCK")                            public static var CAPS_LOCK:Int;
    @:native("KEY_SCROLL_LOCK")                          public static var SCROLL_LOCK:Int;
    @:native("KEY_NUM_LOCK")                             public static var NUM_LOCK:Int;
    @:native("KEY_PRINT_SCREEN")                         public static var PRINT_SCREEN:Int;
    @:native("KEY_PAUSE")                                public static var PAUSE:Int;
    @:native("KEY_F1")                                   public static var F1:Int;
    @:native("KEY_F2")                                   public static var F2:Int;
    @:native("KEY_F3")                                   public static var F3:Int;
    @:native("KEY_F4")                                   public static var F4:Int;
    @:native("KEY_F5")                                   public static var F5:Int;
    @:native("KEY_F6")                                   public static var F6:Int;
    @:native("KEY_F7")                                   public static var F7:Int;
    @:native("KEY_F8")                                   public static var F8:Int;
    @:native("KEY_F9")                                   public static var F9:Int;
    @:native("KEY_F10")                                  public static var F10:Int;
    @:native("KEY_F11")                                  public static var F11:Int;
    @:native("KEY_F12")                                  public static var F12:Int;
    @:native("KEY_LEFT_SHIFT")                           public static var LEFT_SHIFT:Int;
    @:native("KEY_LEFT_CONTROL")                         public static var LEFT_CONTROL:Int;
    @:native("KEY_LEFT_ALT")                             public static var LEFT_ALT:Int;
    @:native("KEY_LEFT_SUPER")                           public static var LEFT_SUPER:Int;
    @:native("KEY_RIGHT_SHIFT")                          public static var RIGHT_SHIFT:Int;
    @:native("KEY_RIGHT_CONTROL")                        public static var RIGHT_CONTROL:Int;
    @:native("KEY_RIGHT_ALT")                            public static var RIGHT_ALT:Int;
    @:native("KEY_RIGHT_SUPER")                          public static var RIGHT_SUPER:Int;
    @:native("KEY_KB_MENU")                              public static var KB_MENU:Int;
    @:native("KEY_KP_0")                                 public static var KP_0:Int;
    @:native("KEY_KP_1")                                 public static var KP_1:Int;
    @:native("KEY_KP_2")                                 public static var KP_2:Int;
    @:native("KEY_KP_3")                                 public static var KP_3:Int;
    @:native("KEY_KP_4")                                 public static var KP_4:Int;
    @:native("KEY_KP_5")                                 public static var KP_5:Int;
    @:native("KEY_KP_6")                                 public static var KP_6:Int;
    @:native("KEY_KP_7")                                 public static var KP_7:Int;
    @:native("KEY_KP_8")                                 public static var KP_8:Int;
    @:native("KEY_KP_9")                                 public static var KP_9:Int;
    @:native("KEY_KP_DECIMAL")                           public static var KP_DECIMAL:Int;
    @:native("KEY_KP_DIVIDE")                            public static var KP_DIVIDE:Int;
    @:native("KEY_KP_MULTIPLY")                          public static var KP_MULTIPLY:Int;
    @:native("KEY_KP_SUBTRACT")                          public static var KP_SUBTRACT:Int;
    @:native("KEY_KP_ADD")                               public static var KP_ADD:Int;
    @:native("KEY_KP_ENTER")                             public static var KP_ENTER:Int;
    @:native("KEY_KP_EQUAL")                             public static var KP_EQUAL:Int;
    @:native("KEY_BACK")                                 public static var BACK:Int;
    @:native("KEY_MENU")                                 public static var MENU:Int;
    @:native("KEY_VOLUME_UP")                            public static var VOLUME_UP:Int;
    @:native("KEY_VOLUME_DOWN")                          public static var VOLUME_DOWN:Int;
}

@:include("raylib.h")
extern enum abstract MouseButton(Int) from Int to Int {
    @:native("MOUSE_BUTTON_LEFT")                        public static var LEFT:Int;
    @:native("MOUSE_BUTTON_RIGHT")                       public static var RIGHT:Int;
    @:native("MOUSE_BUTTON_MIDDLE")                      public static var MIDDLE:Int;
    @:native("MOUSE_BUTTON_SIDE")                        public static var SIDE:Int;
    @:native("MOUSE_BUTTON_EXTRA")                       public static var EXTRA:Int;
    @:native("MOUSE_BUTTON_FORWARD")                     public static var FORWARD:Int;
    @:native("MOUSE_BUTTON_BACK")                        public static var BACK:Int;
}

@:include("raylib.h")
extern enum abstract MouseCursor(Int) from Int to Int {
    @:native("MOUSE_CURSOR_DEFAULT")                     public static var DEFAULT:Int;
    @:native("MOUSE_CURSOR_ARROW")                       public static var ARROW:Int;
    @:native("MOUSE_CURSOR_IBEAM")                       public static var IBEAM:Int;
    @:native("MOUSE_CURSOR_CROSSHAIR")                   public static var CROSSHAIR:Int;
    @:native("MOUSE_CURSOR_POINTING_HAND")               public static var POINTING_HAND:Int;
    @:native("MOUSE_CURSOR_RESIZE_EW")                   public static var RESIZE_EW:Int;
    @:native("MOUSE_CURSOR_RESIZE_NS")                   public static var RESIZE_NS:Int;
    @:native("MOUSE_CURSOR_RESIZE_NWSE")                 public static var RESIZE_NWSE:Int;
    @:native("MOUSE_CURSOR_RESIZE_NESW")                 public static var RESIZE_NESW:Int;
    @:native("MOUSE_CURSOR_RESIZE_ALL")                  public static var RESIZE_ALL:Int;
    @:native("MOUSE_CURSOR_NOT_ALLOWED")                 public static var NOT_ALLOWED:Int;
}

@:include("raylib.h")
extern enum abstract GamepadButton(Int) from Int to Int {
    @:native("GAMEPAD_BUTTON_UNKNOWN")                   public static var UNKNOWN:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_UP")              public static var LEFT_FACE_UP:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_RIGHT")           public static var LEFT_FACE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_DOWN")            public static var LEFT_FACE_DOWN:Int;
    @:native("GAMEPAD_BUTTON_LEFT_FACE_LEFT")            public static var LEFT_FACE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_UP")             public static var RIGHT_FACE_UP:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_RIGHT")          public static var RIGHT_FACE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_DOWN")           public static var RIGHT_FACE_DOWN:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_FACE_LEFT")           public static var RIGHT_FACE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_1")            public static var LEFT_TRIGGER_1:Int;
    @:native("GAMEPAD_BUTTON_LEFT_TRIGGER_2")            public static var LEFT_TRIGGER_2:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_1")           public static var RIGHT_TRIGGER_1:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_TRIGGER_2")           public static var RIGHT_TRIGGER_2:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE_LEFT")               public static var MIDDLE_LEFT:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE")                    public static var MIDDLE:Int;
    @:native("GAMEPAD_BUTTON_MIDDLE_RIGHT")              public static var MIDDLE_RIGHT:Int;
    @:native("GAMEPAD_BUTTON_LEFT_THUMB")                public static var LEFT_THUMB:Int;
    @:native("GAMEPAD_BUTTON_RIGHT_THUMB")               public static var RIGHT_THUMB:Int;
}

@:include("raylib.h")
extern enum abstract GamepadAxis(Int) from Int to Int {
    @:native("GAMEPAD_AXIS_LEFT_X")                      public static var LEFT_X:Int;
    @:native("GAMEPAD_AXIS_LEFT_Y")                      public static var LEFT_Y:Int;
    @:native("GAMEPAD_AXIS_RIGHT_X")                     public static var RIGHT_X:Int;
    @:native("GAMEPAD_AXIS_RIGHT_Y")                     public static var RIGHT_Y:Int;
    @:native("GAMEPAD_AXIS_LEFT_TRIGGER")                public static var LEFT_TRIGGER:Int;
    @:native("GAMEPAD_AXIS_RIGHT_TRIGGER")               public static var RIGHT_TRIGGER:Int;
}

@:include("raylib.h")
extern enum abstract MaterialMapIndex(Int) from Int to Int {
    @:native("MATERIAL_MAP_ALBEDO")                      public static var ALBEDO:Int;
    @:native("MATERIAL_MAP_METALNESS")                   public static var METALNESS:Int;
    @:native("MATERIAL_MAP_NORMAL")                      public static var NORMAL:Int;
    @:native("MATERIAL_MAP_ROUGHNESS")                   public static var ROUGHNESS:Int;
    @:native("MATERIAL_MAP_OCCLUSION")                   public static var OCCLUSION:Int;
    @:native("MATERIAL_MAP_EMISSION")                    public static var EMISSION:Int;
    @:native("MATERIAL_MAP_HEIGHT")                      public static var HEIGHT:Int;
    @:native("MATERIAL_MAP_CUBEMAP")                     public static var CUBEMAP:Int;
    @:native("MATERIAL_MAP_IRRADIANCE")                  public static var IRRADIANCE:Int;
    @:native("MATERIAL_MAP_PREFILTER")                   public static var PREFILTER:Int;
    @:native("MATERIAL_MAP_BRDF")                        public static var BRDF:Int;
}

@:include("raylib.h")
extern enum abstract ShaderLocationIndex(Int) from Int to Int {
    @:native("SHADER_LOC_VERTEX_POSITION")               public static var VERTEX_POSITION:Int;
    @:native("SHADER_LOC_VERTEX_TEXCOORD01")             public static var VERTEX_TEXCOORD01:Int;
    @:native("SHADER_LOC_VERTEX_TEXCOORD02")             public static var VERTEX_TEXCOORD02:Int;
    @:native("SHADER_LOC_VERTEX_NORMAL")                 public static var VERTEX_NORMAL:Int;
    @:native("SHADER_LOC_VERTEX_TANGENT")                public static var VERTEX_TANGENT:Int;
    @:native("SHADER_LOC_VERTEX_COLOR")                  public static var VERTEX_COLOR:Int;
    @:native("SHADER_LOC_MATRIX_MVP")                    public static var MATRIX_MVP:Int;
    @:native("SHADER_LOC_MATRIX_VIEW")                   public static var MATRIX_VIEW:Int;
    @:native("SHADER_LOC_MATRIX_PROJECTION")             public static var MATRIX_PROJECTION:Int;
    @:native("SHADER_LOC_MATRIX_MODEL")                  public static var MATRIX_MODEL:Int;
    @:native("SHADER_LOC_MATRIX_NORMAL")                 public static var MATRIX_NORMAL:Int;
    @:native("SHADER_LOC_VECTOR_VIEW")                   public static var VECTOR_VIEW:Int;
    @:native("SHADER_LOC_COLOR_DIFFUSE")                 public static var COLOR_DIFFUSE:Int;
    @:native("SHADER_LOC_COLOR_SPECULAR")                public static var COLOR_SPECULAR:Int;
    @:native("SHADER_LOC_COLOR_AMBIENT")                 public static var COLOR_AMBIENT:Int;
    @:native("SHADER_LOC_MAP_ALBEDO")                    public static var MAP_ALBEDO:Int;
    @:native("SHADER_LOC_MAP_METALNESS")                 public static var MAP_METALNESS:Int;
    @:native("SHADER_LOC_MAP_NORMAL")                    public static var MAP_NORMAL:Int;
    @:native("SHADER_LOC_MAP_ROUGHNESS")                 public static var MAP_ROUGHNESS:Int;
    @:native("SHADER_LOC_MAP_OCCLUSION")                 public static var MAP_OCCLUSION:Int;
    @:native("SHADER_LOC_MAP_EMISSION")                  public static var MAP_EMISSION:Int;
    @:native("SHADER_LOC_MAP_HEIGHT")                    public static var MAP_HEIGHT:Int;
    @:native("SHADER_LOC_MAP_CUBEMAP")                   public static var MAP_CUBEMAP:Int;
    @:native("SHADER_LOC_MAP_IRRADIANCE")                public static var MAP_IRRADIANCE:Int;
    @:native("SHADER_LOC_MAP_PREFILTER")                 public static var MAP_PREFILTER:Int;
    @:native("SHADER_LOC_MAP_BRDF")                      public static var MAP_BRDF:Int;
}

@:include("raylib.h")
extern enum abstract ShaderUniformDataType(Int) from Int to Int {
    @:native("SHADER_UNIFORM_FLOAT")                     public static var FLOAT:Int;
    @:native("SHADER_UNIFORM_VEC2")                      public static var VEC2:Int;
    @:native("SHADER_UNIFORM_VEC3")                      public static var VEC3:Int;
    @:native("SHADER_UNIFORM_VEC4")                      public static var VEC4:Int;
    @:native("SHADER_UNIFORM_INT")                       public static var INT:Int;
    @:native("SHADER_UNIFORM_IVEC2")                     public static var IVEC2:Int;
    @:native("SHADER_UNIFORM_IVEC3")                     public static var IVEC3:Int;
    @:native("SHADER_UNIFORM_IVEC4")                     public static var IVEC4:Int;
    @:native("SHADER_UNIFORM_SAMPLER2D")                 public static var SAMPLER2D:Int;
}

@:include("raylib.h")
extern enum abstract ShaderAttributeDataType(Int) from Int to Int {
    @:native("SHADER_ATTRIB_FLOAT")                      public static var FLOAT:Int;
    @:native("SHADER_ATTRIB_VEC2")                       public static var VEC2:Int;
    @:native("SHADER_ATTRIB_VEC3")                       public static var VEC3:Int;
    @:native("SHADER_ATTRIB_VEC4")                       public static var VEC4:Int;
}

@:include("raylib.h")
extern enum abstract PixelFormat(Int) from Int to Int {
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAYSCALE")       public static var UNCOMPRESSED_GRAYSCALE:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA")      public static var UNCOMPRESSED_GRAY_ALPHA:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G6B5")          public static var UNCOMPRESSED_R5G6B5:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8")          public static var UNCOMPRESSED_R8G8B8:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R5G5B5A1")        public static var UNCOMPRESSED_R5G5B5A1:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R4G4B4A4")        public static var UNCOMPRESSED_R4G4B4A4:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R8G8B8A8")        public static var UNCOMPRESSED_R8G8B8A8:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32")             public static var UNCOMPRESSED_R32:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32")       public static var UNCOMPRESSED_R32G32B32:Int;
    @:native("PIXELFORMAT_UNCOMPRESSED_R32G32B32A32")    public static var UNCOMPRESSED_R32G32B32A32:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGB")          public static var COMPRESSED_DXT1_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT1_RGBA")         public static var COMPRESSED_DXT1_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT3_RGBA")         public static var COMPRESSED_DXT3_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_DXT5_RGBA")         public static var COMPRESSED_DXT5_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC1_RGB")          public static var COMPRESSED_ETC1_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_RGB")          public static var COMPRESSED_ETC2_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA")     public static var COMPRESSED_ETC2_EAC_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGB")          public static var COMPRESSED_PVRT_RGB:Int;
    @:native("PIXELFORMAT_COMPRESSED_PVRT_RGBA")         public static var COMPRESSED_PVRT_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA")     public static var COMPRESSED_ASTC_4x4_RGBA:Int;
    @:native("PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA")     public static var COMPRESSED_ASTC_8x8_RGBA:Int;
}

@:include("raylib.h")
extern enum abstract TextureFilter(Int) from Int to Int {
    @:native("TEXTURE_FILTER_POINT")                     public static var POINT:Int;
    @:native("TEXTURE_FILTER_BILINEAR")                  public static var BILINEAR:Int;
    @:native("TEXTURE_FILTER_TRILINEAR")                 public static var TRILINEAR:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_4X")            public static var ANISOTROPIC_4X:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_8X")            public static var ANISOTROPIC_8X:Int;
    @:native("TEXTURE_FILTER_ANISOTROPIC_16X")           public static var ANISOTROPIC_16X:Int;
}

@:include("raylib.h")
extern enum abstract TextureWrap(Int) from Int to Int {
    @:native("TEXTURE_WRAP_REPEAT")                      public static var REPEAT:Int;
    @:native("TEXTURE_WRAP_CLAMP")                       public static var CLAMP:Int;
    @:native("TEXTURE_WRAP_MIRROR_REPEAT")               public static var MIRROR_REPEAT:Int;
    @:native("TEXTURE_WRAP_MIRROR_CLAMP")                public static var MIRROR_CLAMP:Int;
}

@:include("raylib.h")
extern enum abstract CubemapLayout(Int) from Int to Int {
    @:native("CUBEMAP_LAYOUT_AUTO_DETECT")               public static var AUTO_DETECT:Int;
    @:native("CUBEMAP_LAYOUT_LINE_VERTICAL")             public static var LINE_VERTICAL:Int;
    @:native("CUBEMAP_LAYOUT_LINE_HORIZONTAL")           public static var LINE_HORIZONTAL:Int;
    @:native("CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR")       public static var CROSS_THREE_BY_FOUR:Int;
    @:native("CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE")       public static var CROSS_FOUR_BY_THREE:Int;
    @:native("CUBEMAP_LAYOUT_PANORAMA")                  public static var PANORAMA:Int;
}

@:include("raylib.h")
extern enum abstract FontType(Int) from Int to Int {
    @:native("FONT_DEFAULT")                             public static var DEFAULT:Int;
    @:native("FONT_BITMAP")                              public static var BITMAP:Int;
    @:native("FONT_SDF")                                 public static var SDF:Int;
}

@:include("raylib.h")
extern enum abstract BlendMode(Int) from Int to Int {
    @:native("BLEND_ALPHA")                              public static var ALPHA:Int;
    @:native("BLEND_ADDITIVE")                           public static var ADDITIVE:Int;
    @:native("BLEND_MULTIPLIED")                         public static var MULTIPLIED:Int;
    @:native("BLEND_ADD_COLORS")                         public static var ADD_COLORS:Int;
    @:native("BLEND_SUBTRACT_COLORS")                    public static var SUBTRACT_COLORS:Int;
    @:native("BLEND_CUSTOM")                             public static var CUSTOM:Int;
}

@:include("raylib.h")
extern enum abstract Gesture(Int) from Int to Int {
    @:native("GESTURE_NONE")                             public static var NONE:Int;
    @:native("GESTURE_TAP")                              public static var TAP:Int;
    @:native("GESTURE_DOUBLETAP")                        public static var DOUBLETAP:Int;
    @:native("GESTURE_HOLD")                             public static var HOLD:Int;
    @:native("GESTURE_DRAG")                             public static var DRAG:Int;
    @:native("GESTURE_SWIPE_RIGHT")                      public static var SWIPE_RIGHT:Int;
    @:native("GESTURE_SWIPE_LEFT")                       public static var SWIPE_LEFT:Int;
    @:native("GESTURE_SWIPE_UP")                         public static var SWIPE_UP:Int;
    @:native("GESTURE_SWIPE_DOWN")                       public static var SWIPE_DOWN:Int;
    @:native("GESTURE_PINCH_IN")                         public static var PINCH_IN:Int;
    @:native("GESTURE_PINCH_OUT")                        public static var PINCH_OUT:Int;
}

@:include("raylib.h")
extern enum abstract CameraMode(Int) from Int to Int {
    @:native("CAMERA_CUSTOM")                            public static var CUSTOM:Int;
    @:native("CAMERA_FREE")                              public static var FREE:Int;
    @:native("CAMERA_ORBITAL")                           public static var ORBITAL:Int;
    @:native("CAMERA_FIRST_PERSON")                      public static var FIRST_PERSON:Int;
    @:native("CAMERA_THIRD_PERSON")                      public static var THIRD_PERSON:Int;
}

@:include("raylib.h")
extern enum abstract CameraProjection(Int) from Int to Int {
    @:native("CAMERA_PERSPECTIVE")                       public static var PERSPECTIVE:Int;
    @:native("CAMERA_ORTHOGRAPHIC")                      public static var ORTHOGRAPHIC:Int;
}

@:include("raylib.h")
extern enum abstract NPatchLayout(Int) from Int to Int {
    @:native("NPATCH_NINE_PATCH")                        public static var NINE_PATCH:Int;
    @:native("NPATCH_THREE_PATCH_VERTICAL")              public static var THREE_PATCH_VERTICAL:Int;
    @:native("NPATCH_THREE_PATCH_HORIZONTAL")            public static var THREE_PATCH_HORIZONTAL:Int;
}


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
        