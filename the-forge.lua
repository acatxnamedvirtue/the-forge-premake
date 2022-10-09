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
        "The-Forge/Common_3/Application/*",
        "The-Forge/Common_3/Application/Fonts/**",
        "The-Forge/Common_3/Application/Interfaces/**",
        "The-Forge/Common_3/Application/Profiler/**",
        "The-Forge/Common_3/Application/UI/UI.cpp",
        
        -- Game
        "The-Forge/Common_3/Game/Interfaces/**",
        "The-Forge/Common_3/Game/Scripting/**",
        
        -- Graphics
        "The-Forge/Common_3/Graphics/*",
        "The-Forge/Common_3/Graphics/Direct3D11/**",
        "The-Forge/Common_3/Graphics/Direct3D12/**",
        "The-Forge/Common_3/Graphics/Interfaces/**",
--         "The-Forge/Common_3/Graphics/Metal/**",
        "The-Forge/Common_3/Graphics/OpenGLES/**",
--         "The-Forge/Common_3/Graphics/Quest/**",
        "The-Forge/Common_3/Graphics/Vulkan/**",
        
        -- OS
        "The-Forge/Common_3/OS/*",
--         "The-Forge/Common_3/OS/Android/**",
--         "The-Forge/Common_3/OS/Darwin/**",
        "The-Forge/Common_3/OS/Interfaces/**",
--         "The-Forge/Common_3/OS/Linux/**",
--         "The-Forge/Common_3/OS/Quest/**",
        "The-Forge/Common_3/OS/Windows/**",
        "The-Forge/Common_3/OS/WindowSystem/**",
        
        -- Resources
        "The-Forge/Common_3/Resources/AnimationSystem/Animation/**",
        
        "The-Forge/Common_3/Resources/ResourceLoader/*",
        "The-Forge/Common_3/Resources/ResourceLoader/Interfaces/**",
        
        -- Tools
        "The-Forge/Common_3/Tools/AssetPipeline/**",
        "The-Forge/Common_3/Tools/ForgeShadingLanguage/**",
        
        -- Utilities
        "The-Forge/Common_3/Utilities/*",
        "The-Forge/Common_3/Utilities/FileSystem/FileSystem.cpp",
        "The-Forge/Common_3/Utilities/FileSystem/SystemRun.cpp",
        "The-Forge/Common_3/Utilities/FileSystem/ZipFileSystem.c",
        "The-Forge/Common_3/Utilities/Interfaces/**",
        "The-Forge/Common_3/Utilities/Log/**",
        "The-Forge/Common_3/Utilities/Math/**",
        "The-Forge/Common_3/Utilities/MemoryTracking/**",
        "The-Forge/Common_3/Utilities/Threading/**",
        
        -- Application ThirdParty
--         "The-Forge/Common_3/Application/ThirdParty/OpenSource/cr/",
--         "The-Forge/Common_3/Application/ThirdParty/OpenSource/Fontstash/",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/*",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/*",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/*",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/hidapi/windows/hid.c",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouse.cpp",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseWind.h",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboard.cpp",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePad.cpp",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouch.cpp",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/imgui/*",

        -- Game ThirdParty
--         "The-Forge/Common_3/Game/ThirdParty/OpenSource/flecs/*",
        "The-Forge/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/*",
--         "The-Forge/Common_3/Game/ThirdParty/OpenSource/soloud20181119/src/**",

        -- Graphics ThirdParty
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/ags/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/AndroidVulkanValidationLayers/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/D3D12MemoryAllocator/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/nvapi/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/OpenGL/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/renderdoc/",
        "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/SPIRV_Cross/*",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/volk/",
--         "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/VulkanMemoryAllocator/",

        -- OS ThirdParty
        "The-Forge/Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpuinfo.h",
        "The-Forge/Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_windows.c",
--         "The-Forge/Common_3/OS/ThirdParty/OpenSource/winpixeventruntime/",

        -- Resources ThirdParty
--         "The-Forge/Common_3/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/",
--         "The-Forge/Common_3/Resources/AnimationSystem/ThirdParty/OpenSource/TressFX/",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/astc-encoder/",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/cgltf/",
        "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/*",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/tinydds/",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/TinyEXR/",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/tinyimageformat/",
--         "The-Forge/Common_3/Resources/ResourceLoader/ThirdParty/OpenSource/tinyktx/",
        
        -- Utilities ThirdParty
        "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/basis_universal/contrib/previewers/lib/*",
        "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.c",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/cJSON/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/EASTL/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/FluidStudios/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/mcpp/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/minizip/",
        "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/ModifiedSonyMath/**",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/murmurhash3/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/Nothings/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/rmem/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/TaskScheduler/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/TinyXML2/",
--         "The-Forge/Common_3/Utilities/ThirdParty/OpenSource/zip/",
        
    }
    
    removefiles 
    {
        "The-Forge/Common_3/Game/ThirdParty/OpenSource/lua-5.3.5/src/luac.c",
    }
    
    defines
    {
        "DIRECT3D12",
        "VULKAN",
        "USE_LOGGING",
        "_ITERATOR_DEBUG_LEVEL=1"
    }
    undefines
    {
        "UNICODE"
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include",
        "The-Forge/Common_3/Application/ThirdParty/OpenSource/gainput/lib/source"
    }

    links
    {
        "Xinput.lib",
        "%{VULKAN_SDK}/Lib/vulkan-1",
        "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/lib/x64/dxcompiler",
        "The-Forge/Common_3/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime",
        "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64",
        "The-Forge/Common_3/Graphics/ThirdParty/OpenSource/nvapi/amd64/nvapi64"
    }

    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        buildoptions
        {
            "/Zc:wchar_t"
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