project "12_ZipFileSystem"
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

    links
    {
        "The-Forge",
        "%{VULKAN_SDK}/Lib/vulkan-1",
    }
    
    fsl_enable "true"
    fsl_out_dir "$(OutDir)/Shaders"
    fsl_binary_out_dir "$(OutDir)/CompiledShaders"
    fsl_compile "true"
    fsl_language "VULKAN DIRECT3D11 DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/basic.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/basic.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/skybox.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/zipTexture.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/12_ZipFileSystem/Shaders/FSL/zipTexture.vert.fsl',
        
        '$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/imgui.frag.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/imgui.vert.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/textured_mesh.frag.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/textured_mesh.vert.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/UI_ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash.frag.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash2D.vert.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash3D.vert.fsl',
        '$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/Fonts_ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.frag.fsl',
        '$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.vert.fsl',
        '$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/Panini_ShaderList.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/ZipFiles" "%{cfg.targetdir}/ZipFiles"',
        
        '{COPYDIR}  "%{Common_3}/OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{Common_3}/OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" "%{cfg.targetdir}/GPUCfg"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" "%{cfg.targetdir}/Scripts"',
        
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" "%{cfg.targetdir}"',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" "%{cfg.targetdir}"',
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