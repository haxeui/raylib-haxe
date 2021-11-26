del haxelib.zip
7z a haxelib.zip examples\ generator\ lib\ Build.xml haxelib.json LICENSE.md RayLib.hx README.md run.n -mx0 -xr!bin
haxelib submit haxelib.zip
del haxelib.zip
