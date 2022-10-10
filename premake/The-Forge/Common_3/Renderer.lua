project "Renderer"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Common_3}/Graphics/CommonShaderReflection.cpp",
        "%{Common_3}/Graphics/DependencyTracking.cpp",
        "%{Common_3}/Graphics/Direct3D11/Direct3D11.cpp",
        "%{Common_3}/Graphics/Direct3D11/Direct3D11Raytracing.cpp",
        "%{Common_3}/Graphics/Direct3D11/Direct3D11ShaderReflection.cpp",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12.cpp",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12Hooks.cpp",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12Raytracing.cpp",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12ShaderReflection.cpp",
        "%{Common_3}/Graphics/GPUConfig.cpp",
        "%{Common_3}/Graphics/Graphics.cpp",
        "%{Common_3}/Graphics/Vulkan/Vulkan.cpp",
        "%{Common_3}/Graphics/Vulkan/VulkanRaytracing.cpp",
        "%{Common_3}/Graphics/Vulkan/VulkanShaderReflection.cpp",
        "%{Common_3}/Resources/ResourceLoader/ResourceLoader.cpp",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/allocator.cpp",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/indexgenerator.cpp",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/overdrawoptimizer.cpp",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vcacheoptimizer.cpp",
        "%{Common_3}/Resources/ResourceLoader/ThirdParty/OpenSource/meshoptimizer/src/vfetchoptimizer.cpp",
        
        "%{Common_3}/Graphics/Direct3D11/Direct3D11CapBuilder.h",
        "%{Common_3}/Graphics/Direct3D11/Direct3D11Config.h",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12CapBuilder.h",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12Config.h",
        "%{Common_3}/Graphics/Direct3D12/Direct3D12Hooks.h",
        "%{Common_3}/Graphics/GraphicsConfig.h",
        "%{Common_3}/Graphics/Interfaces/IGraphics.h",
        "%{Common_3}/Graphics/Interfaces/IRay.h",
        "%{Common_3}/Graphics/Interfaces/IShaderReflection.h",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/AgsHelper.h",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/nvapi/NvApiHelper.h",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/VulkanMemoryAllocator/VulkanMemoryAllocator.h",
        "%{Common_3}/Graphics/Vulkan/VulkanCapsBuilder.h",
        "%{Common_3}/Graphics/Vulkan/VulkanConfig.h",
        "%{Common_3}/Resources/ResourceLoader/Interfaces/IResourceLoader.h",
    }
     
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1"
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include",
    }
    
   
    links
    {
        "%{Common_3}/Graphics/ThirdParty/OpenSource/DirectXShaderCompiler/lib/x64/dxcompiler",
        "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/nvapi/amd64/nvapi64",
        "SPIRVTools",
    }

    filter "system:windows"
        systemversion "latest"
        location "PC Visual Studio 2022"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
