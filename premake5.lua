include "../../premake/common_premake_defines.lua"

project "gif"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./src/gif_io/**.h",
		"./src/gif_io/**.cpp"
	}