project "The-Forge"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        -- Application
        "%{Common_3}/Application/*",
        "%{Common_3}/Application/Fonts/**",
        "%{Common_3}/Application/Interfaces/**",
        "%{Common_3}/Application/Profiler/**",
        "%{Common_3}/Application/UI/UI.cpp",
        
        -- Game
        "%{Common_3}/Game/Interfaces/**",
        "%{Common_3}/Game/Scripting/**",
        
        -- Graphics
        "%{Common_3}/Graphics/*",
        "%{Common_3}/Graphics/Direct3D11/**",
        "%{Common_3}/Graphics/Direct3D12/**",
        "%{Common_3}/Graphics/Interfaces/**",
--         "%{Common_3}/Graphics/Metal/**",
        "%{Common_3}/Graphics/OpenGLES/**",
--         "%{Common_3}/Graphics/Quest/**",
        "%{Common_3}/Graphics/Vulkan/**",
        
        -- OS
        "%{Common_3}/OS/*",
--         "%{Common_3}/OS/Android/**",
--         "%{Common_3}/OS/Darwin/**",
        "%{Common_3}/OS/Interfaces/**",
--         "%{Common_3}/OS/Linux/**",
--         "%{Common_3}/OS/Quest/**",
        "%{Common_3}/OS/Windows/**",
        "%{Common_3}/OS/WindowSystem/**",
        
        -- Resources
        "%{Common_3}/Resources/AnimationSystem/Animation/*",
        
        "%{Common_3}/Resources/ResourceLoader/*",
        "%{Common_3}/Resources/ResourceLoader/Interfaces/*",
        
        -- Tools
        "%{Common_3}/Tools/AssetPipeline/**",
        "%{Common_3}/Tools/ForgeShadingLanguage/**",
        
        -- Utilities
        "%{Common_3}/Utilities/*",
        "%{Common_3}/Utilities/FileSystem/FileSystem.cpp",
        "%{Common_3}/Utilities/FileSystem/SystemRun.cpp",
        "%{Common_3}/Utilities/FileSystem/ZipFileSystem.c",
        "%{Common_3}/Utilities/Interfaces/**",
        "%{Common_3}/Utilities/Log/**",
        "%{Common_3}/Utilities/Math/**",
        "%{Common_3}/Utilities/MemoryTracking/**",
        "%{Common_3}/Utilities/Threading/**",
        
        -- Application ThirdParty
--         "%{Common_3}/Application/ThirdParty/OpenSource/cr/",
--         "%{Common_3}/Application/ThirdParty/OpenSource/Fontstash/",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/*",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/*",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/*",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/hidapi/windows/hid.c",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouse.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseWind.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboard.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePad.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouch.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/*",

        -- Game ThirdParty
        "%{Common_3}/Game/ThirdParty/OpenSource/flecs/*",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/*",
--         "%{Common_3}/Game/ThirdParty/OpenSource/soloud20181119/src/**",

        -- Graphics ThirdParty
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/AndroidVulkanValidationLayers/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/D3D12MemoryAllocator/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/nvapi/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/OpenGL/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/renderdoc/",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/*",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/volk/",
--         "%{Common_3}/Graphics/ThirdParty/OpenSource/VulkanMemoryAllocator/",

        -- OS ThirdParty
        "%{Common_3}/OS/ThirdParty/OpenSource/cpu_features/src/cpuinfo.h",
        "%{Common_3}/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_windows.c",
--         "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/",

        -- Resources ThirdParty
--         "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/TressFX/",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/astc-encoder/",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/cgltf/",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/*",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/tinydds/",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/TinyEXR/",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/tinyimageformat/",
--         "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/tinyktx/",
        
        -- Utilities ThirdParty
        "%{Common_3}/Utilities/ThirdParty/OpenSource/basis_universal/contrib/previewers/lib/*",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.c",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/cJSON/",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/**",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/FluidStudios/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/mcpp/",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/**",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/ModifiedSonyMath/**",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/murmurhash3/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/Nothings/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/rmem/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/TaskScheduler/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/TinyXML2/",
--         "%{Common_3}/Utilities/ThirdParty/OpenSource/zip/",
        
        -- Middleware PaniniProjection
        "%{Middleware_3}/PaniniProjection/**",
        
        -- Middleware ParallelPrimitives
--         "%{Middleware_3}/ParallelPrimitives",

    }
    
    removefiles 
    {
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/luac.c",
    }
    
    defines
    {
        "DIRECT3D12",
        "VULKAN",
        "USE_LOGGING",
        "_ITERATOR_DEBUG_LEVEL=1",
    }
    
    undefines
    {
        "UNICODE",
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source",
    }

    links
    {
        "ozz_animation",
        "ozz_base",
        "Xinput.lib",
        "%{VULKAN_SDK}/Lib/vulkan-1",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/lib/x64/dxcompiler",
        "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/nvapi/amd64/nvapi64",
    }

    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        buildoptions
        {
            "/Zc:wchar_t",
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"

project "ozz_animation"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1",
    }
    
    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        buildoptions
        {
        }
        
        files
        {
            "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/*",
            "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/*",
        }
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"

project "ozz_base"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1",
    }
    
    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        buildoptions
        {
        }
        
        files
        {
            "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/**",
            "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/**",
        }
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"