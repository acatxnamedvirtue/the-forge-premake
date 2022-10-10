project "Visibility_Buffer"
    kind "ConsoleApp"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Examples_3}/Visibility_Buffer/src/Geometry.cpp",
        "%{Examples_3}/Visibility_Buffer/src/Visibility_Buffer.cpp",
        "%{Examples_3}/Visibility_Buffer/src/Geometry.h",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/cull_resources.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_resources.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/light_cull_resources.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/packing.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/shader_defs.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/shading.h.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/vb_resources.h.fsl",
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
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/batch_compaction.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/clear_buffers.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/clear_light_clusters.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/cluster_lights.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/CurveConversion.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_pass.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_pass.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_pass_alpha.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_shade.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_shade.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_shade_pointlight.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/deferred_shade_pointlight.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/display.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/display.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/godray.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/HDAO.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/HDAO.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/panoToCube.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/resolve.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/resolve.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/resolveGodray.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/ShaderList.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/shadow_pass.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/shadow_pass_alpha.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/shadow_pass_alpha.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/skybox.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/skybox.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/sun.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/sun.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/triangle_filtering.comp.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_pass.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_pass.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_pass_alpha.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_pass_alpha.vert.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_shade.frag.fsl",
        "%{Examples_3}/Visibility_Buffer/src/Shaders/FSL/visibilityBuffer_shade.vert.fsl",
    }
    
    postbuildcommands
    {
        '{COPYDIR}  "%{Art}/SanMiguel_3/Meshes" %{cfg.targetdir}/Meshes',
        '{COPYDIR}  "%{Art}/SanMiguel_3/Textures" %{cfg.targetdir}/Textures',
        '{COPYFILE} "%{Examples_3}/Visibility_Buffer/Resources/cameraPath.bin" %{cfg.targetdir}',
        '{COPYDIR}  "%{Examples_3}/Visibility_Buffer/Resources/Fonts" %{cfg.targetdir}/Fonts',
        '{COPYDIR}  "%{Examples_3}/Visibility_Buffer/Resources/Scripts" %{cfg.targetdir}/Scripts',
        
        '{MKDIR}    "%{cfg.targetdir}/PipelineCaches/VULKAN"',
        '{MKDIR}    "%{cfg.targetdir}/PipelineCaches/DIRECT3D12"',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" %{cfg.targetdir}/Shaders',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" %{cfg.targetdir}/CompiledShaders',
        
        '{COPYDIR}  "%{Examples_3}/Visibility_Buffer/src/GPUCfg" %{cfg.targetdir}/GPUCfg',
        
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
        