project "15a_VisibilityBufferOIT"
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
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/batch_compaction.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/clear_buffers.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/clear_light_clusters.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/cluster_lights.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/cull_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/CurveConversion.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_pass.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_pass_transparent.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_shade.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_shade.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_shade_pointlight.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/deferred_shade_pointlight.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/display.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/display.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/godray.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/HDAO.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/HDAO.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/light_cull_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/oitClear.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/packing.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/panoToCube.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/resolve.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/resolve.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/resolveGodray.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shader_defs.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shading.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shadow_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shadow_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shadow_pass_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shadow_pass_transparent.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/shadow_pass_transparent.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/skybox.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/sun.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/sun.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/triangle_filtering.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/vb_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass_transparent_ret.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_pass_transparent_void.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_shade.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/15a_VisibilityBufferOIT/Shaders/FSL/visibilityBuffer_shade.vert.fsl',
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Art}/SanMiguel_3/Meshes" "%{cfg.targetdir}/Meshes"',
        '{COPYDIR}  "%{Art}/SanMiguel_3/Textures" "%{cfg.targetdir}/Textures"',
        '{COPYFILE} "%{Examples_3}/Unit_Tests/UnitTestResources/cameraPath.bin" "%{cfg.targetdir}"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" "%{cfg.targetdir}/Fonts"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" "%{cfg.targetdir}/Scripts"',
        
        '{MKDIR}    "%{cfg.targetdir}/PipelineCaches/VULKAN"',
        '{MKDIR}    "%{cfg.targetdir}/PipelineCaches/DIRECT3D12"',
        
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" "%{cfg.targetdir}/GPUCfg"',
        
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