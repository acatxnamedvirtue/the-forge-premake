project "09_LightShadowPlayground"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
       "%{Examples_3}/Unit_Tests/src/%{prj.name}/**",
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
    fsl_language "VULKAN DIRECT3D12"

    fsl_includes
    {
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/ASMShader_Defs.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/bakedSDFMeshShadow.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/batchCompaction.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/clearVisibilityBuffers.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/copyDEMQuads.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/copyDEMQuads.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/copyDepthQuads.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/copyDepthQuads.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/cull_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/display.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/display.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/fill_Indirection.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/fill_Indirection.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/generateAsmDEM.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/generateAsmDEM.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/meshDepthPass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/meshDepthPassAlpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/meshDepthPassAlpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/Packing.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/panoToCube.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/quad.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/quad.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/resolve.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/resolve.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/SDF_Constant.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/Shader_Defs.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/shading.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/skybox.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/skybox.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/triangleFiltering.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/updateRegion3DTexture.comp.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/upsampleSDFShadow.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/upsampleSDFShadow.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/vb_resources.h.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferPass.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferPass.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferPassAlpha.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferPassAlpha.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferShade.frag.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visibilityBufferShade.vert.fsl',
        '$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/09_LightShadowPlayground/Shaders/FSL/visualizeSDFMesh.comp.fsl',
        
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
        '{COPYDIR}  "%{Art}/SanMiguel_3/Textures" "%{cfg.targetdir}/Textures"',
        '{COPYDIR}  "%{Art}/SanMiguel_3/Meshes" "%{cfg.targetdir}/Meshes"',
        '{COPYDIR}  "%{Art}/SDF" "%{cfg.targetdir}/SDF"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Fonts" "%{cfg.targetdir}/Fonts"',
        
        '{COPYDIR}   "%{Common_3}/OS/Shaders" "%{cfg.targetdir}/Shaders"',
        '{COPYDIR}   "%{Common_3}/OS/CompiledShaders" "%{cfg.targetdir}/CompiledShaders"',
        
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/GPUCfg" "%{cfg.targetdir}/GPUCfg"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/src/%{prj.name}/Scripts" "%{cfg.targetdir}/Scripts"',
        '{COPYDIR}  "%{Examples_3}/Unit_Tests/UnitTestResources/Scripts" "%{cfg.targetdir}/Scripts"',
        
        '{COPYFILE}  "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" "%{cfg.targetdir}"',
        '{COPYFILE}  "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" "%{cfg.targetdir}"',
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