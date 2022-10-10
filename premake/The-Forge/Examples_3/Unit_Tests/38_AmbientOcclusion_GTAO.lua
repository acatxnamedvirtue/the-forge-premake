project "38_AmbientOcclusion_GTAO"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/%{prj.name}.cpp",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/Geometry.cpp",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/Geometry.h",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/FSL/packing.h",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/FSL/shader_defs.h",
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/FSL/triangle_helper.h",
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
    fsl_compile "true"
    fsl_language "VULKAN DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/denoiseAO.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/fillFSQ.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/fillFSQ.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/generateMips.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/GTAO.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/prefilterDepths.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/TemporalAA.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/Triangular.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/visibilityBuffer_pass.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/visibilityBuffer_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/visibilityBuffer_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/visibilityBuffer_pass_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/38_AmbientOcclusion_GTAO/Shaders/FSL/ShaderList.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Art}/SanMiguel_3/Textures" "%{cfg.targetdir}/Textures"',
        '{COPYDIR}  "%{Art}/SanMiguel_3/Meshes" "%{cfg.targetdir}/Meshes"',
        '{COPYDIR}  "%{Art}/SDF" "%{cfg.targetdir}/SDF"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" "%{cfg.targetdir}/Fonts"',        
        
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" "%{cfg.targetdir}/GPUCfg"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/src/%{prj.name}/Scripts/" "%{cfg.targetdir}/Scripts"',
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