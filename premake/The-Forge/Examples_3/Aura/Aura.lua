project "Aura"
    kind "ConsoleApp"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Aura}/LightPropagation/LightPropagationCascade.cpp",
        "%{Aura}/LightPropagation/LightPropagationCPUContext.cpp",
        "%{Aura}/LightPropagation/LightPropagationGrid.cpp",
        "%{Aura}/LightPropagation/LightPropagationVolume.cpp",
        "%{Aura}/Math/AuraVector.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTDefaultAppInterop.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTFiberContext.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTScheduler.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/TaskScheduler/Scheduler/Source/MTThreadContext.cpp",
        "%{Examples_3}/Aura/src/AuraMiddlewareImpl/AuraMemoryManagerImpl.cpp",
        "%{Examples_3}/Aura/src/AuraMiddlewareImpl/AuraRendererImpl.cpp",
        "%{Examples_3}/Aura/src/AuraMiddlewareImpl/AuraTaskManagerImpl.cpp",
        "%{Examples_3}/Aura/src/AuraMiddlewareImpl/TaskManager.cpp",
        "%{Examples_3}/Aura/src/Geometry.cpp",
        "%{Examples_3}/Aura/src/Aura.cpp",
        "%{Examples_3}/Aura/src/Shadows.cpp",
        "%{Aura}/Config/AuraConfig.h",
        "%{Aura}/Config/AuraParams.h",
        "%{Aura}/Interfaces/IAuraMemoryManager.h",
        "%{Aura}/Interfaces/IAuraRenderer.h",
        "%{Aura}/Interfaces/IAuraTaskManager.h",
        "%{Aura}/LightPropagation/LightPropagationCascade.h",
        "%{Aura}/LightPropagation/LightPropagationCPUContext.h",
        "%{Aura}/LightPropagation/LightPropagationGrid.h",
        "%{Aura}/LightPropagation/LightPropagationVolume.h",
        "%{Aura}/Math/AuraMath.h",
        "%{Aura}/Math/AuraVector.h",
        "%{Aura}/Shaders/FSL/lightPropagation.h",
        "%{Aura}/Shaders/FSL/lpvCommon.h",
        "%{Aura}/Shaders/FSL/lpvCSLightPropagateFunctions.h",
        "%{Aura}/Shaders/FSL/lpvLightPropagateFunctions.h",
        "%{Aura}/Shaders/FSL/lpvSHMaths.h",
        "%{Aura}/Shaders/FSL/lpvVisualizeCommon.h",
        "%{Aura}/Shaders/Shared.h",
        "%{Examples_3}/Aura/src/AuraMiddlewareImpl/TaskManager.h",
        "%{Examples_3}/Aura/src/Camera.hpp",
        "%{Examples_3}/Aura/src/Geometry.h",
        "%{Examples_3}/Aura/src/Shaders/FSL/cull_resources.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/lightPropagation_example.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/light_cull_resources.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/lpvCommon_example.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/lpvLightApply.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/lpvSHMaths_example.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/packing.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/shader_defs.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/shading.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/vb_rsm_resources.h.fsl",
        "%{Examples_3}/Aura/src/Shaders/FSL/wind.h.fsl",
        "%{Examples_3}/Aura/src/Shadows.hpp",
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
        "%{VULKAN_SDK}/Lib",
    }

    links
    {
        "OS",
        "Renderer",
        "Xinput9_1_0.lib",
        "ws2_32.lib",
        "gainputstatic",
    }
    
    fsl_enable "true"
    fsl_out_dir "$(OutDir)/Shaders"
    fsl_binary_out_dir "$(OutDir)/CompiledShaders"
    fsl_language "VULKAN DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/Aura_ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvInjectRSMLight.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvInjectRSMLight.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightCopy.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightCopy.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightCopy.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagate1.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagate1.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagate1.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagateN.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagateN.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvLightPropagateN.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvVisualize.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Aura/Shaders/FSL/lpvVisualize.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/batch_compaction.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/clear_buffers.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/clear_light_clusters.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/cluster_lights.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/fill_rsm.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/fill_rsm.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/fill_rsm_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/fill_rsm_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/panoToCube.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/shadow_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/shadow_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/shadow_pass_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/skybox.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/triangle_filtering.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_pass.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_pass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_pass_alpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_pass_alpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_shade.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Aura/src/Shaders/FSL/visibilityBuffer_shade.vert.fsl',
    }
    
    postbuildcommands
    {
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" %{cfg.targetdir}',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" %{cfg.targetdir}',
        
        '{COPYDIR}  "%{Art}/SanMiguel_3/Meshes" %{cfg.targetdir}/Meshes',
        '{COPYDIR}  "%{Art}/SanMiguel_3/Textures" %{cfg.targetdir}/Textures',
        '{COPYFILE} "%{Examples_3}/Aura/Resources/cameraPath.bin" %{cfg.targetdir}',
        '{COPYDIR}  "%{Examples_3}/Aura/Resources/Fonts" %{cfg.targetdir}/Fonts',
        
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" %{cfg.targetdir}/Shaders',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" %{cfg.targetdir}/CompiledShaders',

        '{COPYDIR}  "%{Examples_3}/Aura/src/GPUCfg" %{cfg.targetdir}/GPUCfg',
        '{COPYDIR}  "%{Examples_3}/Aura/Resources/Scripts" %{cfg.targetdir}/Scripts',
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
        