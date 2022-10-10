project "06_MaterialPlayground"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Examples_3}/Unit_Tests/src/%{prj.name}/%{prj.name}.cpp",
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
        "ozz_base",
        "ozz_animation",
        "Xinput9_1_0.lib",
        "ws2_32.lib",
    }
    
    fsl_enable "true"
    fsl_out_dir "$(OutDir)/Shaders"
    fsl_binary_out_dir "$(OutDir)/CompiledShaders"
    fsl_compile "true"
    fsl_language "VULKAN DIRECT3D11 DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/BRDFIntegration.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/computeIrradianceMap.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/computeSpecularMap.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/fullscreen.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair.comp.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_integrate.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_length_constraints.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_local_constraints.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_pre_warm.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_shadow.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_shadow.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_shock_propagation.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_short_cut_clear.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_short_cut_depth_peeling.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_short_cut_fill_color.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_short_cut_resolve_color.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_short_cut_resolve_depth.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/hair_update_follow_hairs.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/panoToCube.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/renderSceneBRDF.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/renderSceneBRDF.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/renderSceneBRDF_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/renderSceneShadows.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/renderSceneShadows.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/showCapsules.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/showCapsules.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/skeleton.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/skeleton.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/06_MaterialPlayground/Shaders/FSL/skybox.vert.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Art}/Hair" %{cfg.targetdir}/Meshes/Hair',
        '{COPYDIR}  "%{Art}/PBR" %{cfg.targetdir}/Textures/PBR',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Meshes" %{cfg.targetdir}/Meshes',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Animation" %{cfg.targetdir}/Animation',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Textures" %{cfg.targetdir}/Textures',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" %{cfg.targetdir}/Fonts',
    
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" %{cfg.targetdir}/GPUCfg',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/src/%{prj.name}/Scripts" %{cfg.targetdir}/Scripts',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" %{cfg.targetdir}/Scripts',
        
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" %{cfg.targetdir}',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" %{cfg.targetdir}',
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