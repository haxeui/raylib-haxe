package;

import RayLib.*;
import RayLib.Colors.*;
import RayLib.Image;
import RayLib.Texture;
import RayLib.Vector2;
import RayLib.Vector2Ref;
import RayLib.Color;
import RayLib.ColorRef;
import RayLib.PixelFormat;
import cpp.NativeArray;
import haxe.io.Bytes;

typedef Bunny = {
	position:Vector2,
	speed:Vector2,
	color:Color
};

class Main {
	static final MAX_BUNNIES = 100000;
	static final MAX_BATCH_ELEMENTS = 8192;

	static function main() {
		var screenWidth:Int = 800;
		var screenHeight:Int = 450;

		InitWindow(screenWidth, screenHeight, "RAYLIB HAXE!");

		var texBunny = LoadTexture("wabbit_alpha.png");

		var bunnies:Array<Bunny> = new Array<Bunny>();

		SetTargetFPS(60);

		while (!WindowShouldClose()) {
			if (IsMouseButtonDown(RayLib.MouseButton.LEFT)) {
				for (i in 0...100) {
					if (bunnies.length < MAX_BUNNIES) {
						var bunny:Bunny = {
							position: GetMousePosition(),
							speed: cast Vector2.create(GetRandomValue(-250, 250) / 60.0, GetRandomValue(-250, 250) / 60.0),
							color: cast Color.create(GetRandomValue(50, 240), GetRandomValue(80, 240), GetRandomValue(100, 240), 255)
						};
						bunnies.push(bunny);
					}
				}
			}

			var halfBunnyWidth:Float = texBunny.width / 2;
			var halfBunnyHeight:Float = texBunny.height / 2;
			
			for (bunny in bunnies) {
				var newPositionX = bunny.position.x + bunny.speed.x;
				var newPositionY = bunny.position.y + bunny.speed.y;
				
				var newSpeedX = bunny.speed.x;
				var newSpeedY = bunny.speed.y;
			
				if ((newPositionX + halfBunnyWidth > screenWidth) || (newPositionX - halfBunnyWidth < 0))
					newSpeedX *= -1;
			
				if ((newPositionY + halfBunnyHeight > screenHeight) || (newPositionY + halfBunnyHeight - 40 < 0))
					newSpeedY *= -1;
			
				bunny.position = cast Vector2.create(newPositionX, newPositionY);
				bunny.speed = cast Vector2.create(newSpeedX, newSpeedY);
			}
			

			// Draw
			BeginDrawing();
			ClearBackground(RAYWHITE);


			for (bunny in bunnies) {
				DrawTexture(texBunny, Std.int(bunny.position.x), Std.int(bunny.position.y), bunny.color);
			}

			DrawRectangle(0, 0, screenWidth, 40, BLACK);
			DrawText(Std.string("bunnies: " + bunnies.length), 120, 10, 20, GREEN);
			DrawText(Std.string("batched draw calls: " + (1 + bunnies.length / MAX_BATCH_ELEMENTS)), 320, 10, 20, MAROON);
			DrawFPS(10, 10);

			EndDrawing();
		}

		CloseWindow();
	}
}
