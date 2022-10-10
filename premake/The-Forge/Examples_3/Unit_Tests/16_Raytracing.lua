project "16_Raytracing"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/%{prj.name}.cpp",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/Shaders/Shared.h",
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
        "_ITERATOR_DEBUG_LEVEL=1",
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include",
    }

    libdirs
    {
        "%{VULKAN_SDK}/Lib"
    }
    
    links
    {
        "OS",
        "Renderer",
        "gainputstatic",
        "Xinput9_1_0.lib",
        "ws2_32.lib",
    }
    
    fsl_enable "true"
    fsl_out_dir "$(OutDir)/Shaders"
    fsl_binary_out_dir "$(OutDir)/CompiledShaders"
    fsl_language "VULKAN DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/16_Raytracing/Shaders/FSL/DisplayTexture.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/16_Raytracing/Shaders/FSL/DisplayTexture.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/16_Raytracing/Shaders/FSL/ShaderList.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Art}/Sponza/Textures" "%{cfg.targetdir}/Textures"',
        '{COPYDIR}  "%{Art}/Sponza/Meshes" "%{cfg.targetdir}/Meshes"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" "%{cfg.targetdir}/Fonts"',
        
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/src/%{prj.name}/Shaders/Vulkan" "%{cfg.targetdir}/Shaders/Vulkan"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/src/%{prj.name}/Shaders/D3D12" "%{cfg.targetdir}/Shaders/DIRECT3D12"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" "%{cfg.targetdir}/GPUCfg"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" "%{cfg.targetdir}/Scripts"',
        
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" "%{cfg.targetdir}"',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" "%{cfg.targetdir}"',
    }
    
    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        location "PC Visual Studio 2017"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"