project "ImGui"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    -- output directory
    targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        -- "imconfig.h",
        -- "imgui.h",
        -- "imgui.cpp",
        -- "imgui_draw.cpp",
        -- "imgui_internal.h",
		-- "imgui_stdlib.h",
		-- "imgui_stdlib.cpp",
        -- "imgui_widgets.cpp",
        -- "imstb_rectpack.h",
        -- "imstb_textedit.h",
        -- "imstb_truetype.h",
        -- "imgui_demo.cpp",
        -- "imgui_tables.cpp",
        -- "imgui_impl_opengl3.h",
        -- "imgui_impl_opengl3.cpp",
        -- "imgui_impl_sdl.h",
        -- "imgui_impl_sdl.cpp",
        -- "ImGuizmo.h",
        -- "ImGuizmo.cpp",
        
        -- "examples/example_sdl_vulkan/**.h",
        -- "examples/example_sdl_vulkan/**.cpp",

        "backends/imgui_impl_vulkan.h",
        "backends/imgui_impl_vulkan.cpp",
        "backends/imgui_impl_sdl.h",
        "backends/imgui_impl_sdl.cpp",
        "imgui.h",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        --"imgui_stdlib.h",
		--"imgui_stdlib.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp",
        "misc/cpp/**.cpp",
        "misc/cpp/**.h",
    }

    includedirs
    {
        "",
        "backends",
        "misc/cpp",
        --"%{IncludeDir.glad}",
        "%{IncludeDir.SDL}/sdl2",
        "%{IncludeDir.VulkanSDK}",
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++17"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"