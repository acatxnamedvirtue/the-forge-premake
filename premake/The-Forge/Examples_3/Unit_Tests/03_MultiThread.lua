project "03_MultiThread"
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
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Graph.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Graph.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Particle.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Particle.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/03_MultiThread/Shaders/FSL/Skybox.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/04_ExecuteIndirect/Shaders/FSL/shaderDefs.h.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Textures" %{cfg.targetdir}/Textures',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" %{cfg.targetdir}/Fonts',
    
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" %{cfg.targetdir}/GPUCfg',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" %{cfg.targetdir}/Scripts',
    
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" %{cfg.targetdir}',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" %{cfg.targetdir}',
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