project "Ephemeris"
    kind "ConsoleApp"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Ephemeris}/Sky/src/Aurora.cpp",
        "%{Ephemeris}/Sky/src/B_Spline.cpp",
        "%{Ephemeris}/Sky/src/CloudImpostor.cpp",
        "%{Ephemeris}/Sky/src/CloudsManager.cpp",
        "%{Ephemeris}/Sky/src/CumulusCloud.cpp",
        "%{Ephemeris}/Sky/src/DistantCloud.cpp",
        "%{Ephemeris}/Sky/src/Ephemeris.cpp",
        "%{Ephemeris}/Sky/src/Icosahedron.cpp",
        "%{Ephemeris}/Sky/src/LocalTime.cpp",
        "%{Ephemeris}/Sky/src/Sky.cpp",
        "%{Ephemeris}/SpaceObjects/src/SpaceObjects.cpp",
        "%{Ephemeris}/src/EphemerisExample/Example.cpp",
        "%{Ephemeris}/src/Perlin.cpp",
        "%{Ephemeris}/Terrain/src/HeightData.cpp",
        "%{Ephemeris}/Terrain/src/Terrain.cpp",
        "%{Ephemeris}/VolumetricClouds/src/VolumetricClouds.cpp",
        "%{Ephemeris}/Sky/resources/Shaders/FSL/RenderSky.h",
        "%{Ephemeris}/Sky/resources/Shaders/FSL/SkyCommon.h",
        "%{Ephemeris}/Sky/src/Aurora.h",
        "%{Ephemeris}/Sky/src/B_Spline.h",
        "%{Ephemeris}/Sky/src/CloudImpostor.h",
        "%{Ephemeris}/Sky/src/CloudsManager.h",
        "%{Ephemeris}/Sky/src/CumulusCloud.h",
        "%{Ephemeris}/Sky/src/DistantCloud.h",
        "%{Ephemeris}/Sky/src/Ephemeris.h",
        "%{Ephemeris}/Sky/src/Icosahedron.h",
        "%{Ephemeris}/Sky/src/IndexManager.h",
        "%{Ephemeris}/Sky/src/LocalTime.h",
        "%{Ephemeris}/Sky/src/Location.h",
        "%{Ephemeris}/Sky/src/Sky.h",
        "%{Ephemeris}/Sky/src/SkyCommon.h",
        "%{Ephemeris}/Sky/src/SkyDomeParams.h",
        "%{Ephemeris}/SpaceObjects/resources/Shaders/FSL/SpaceObjectsCommon.h",
        "%{Ephemeris}/SpaceObjects/src/SpaceObjects.h",
        "%{Ephemeris}/src/EphemerisExample/Shaders/FSL/ExampleCommon.h",
        "%{Ephemeris}/src/Perlin.h",
        "%{Ephemeris}/Terrain/resources/Shaders/FSL/TerrainCommon.h",
        "%{Ephemeris}/Terrain/src/HeightData.h",
        "%{Ephemeris}/Terrain/src/Hemisphere.h",
        "%{Ephemeris}/Terrain/src/Terrain.h",
        "%{Ephemeris}/Terrain/src/Visibility.h",
        "%{Ephemeris}/VolumetricClouds/resources/Shaders/FSL/VolumetricCloudsCommon.h",
        "%{Ephemeris}/VolumetricClouds/src/VolumetricClouds.h",
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
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Sky/resources/Shaders/FSL/RenderSky.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Sky/resources/Shaders/FSL/RenderSky.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Sky/resources/Shaders/FSL/Sky_ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Sky/resources/Shaders/FSL/Space.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Sky/resources/Shaders/FSL/Space.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/SpaceObjects/resources/Shaders/FSL/SpaceObjects_ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/SpaceObjects/resources/Shaders/FSL/Star.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/SpaceObjects/resources/Shaders/FSL/Star.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/SpaceObjects/resources/Shaders/FSL/Sun.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/SpaceObjects/resources/Shaders/FSL/Sun.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/src/EphemerisExample/Shaders/FSL/DepthLinearization.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/src/EphemerisExample/Shaders/FSL/FXAA.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/src/EphemerisExample/Shaders/FSL/ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/src/EphemerisExample/Shaders/FSL/Triangular.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/GenNormalMap.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/GenNormalMap.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/LightingTerrain.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/LightingTerrain.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/RenderTerrain.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/RenderTerrain.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/Terrain.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/Terrain.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/Terrain/resources/Shaders/FSL/Terrain_ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/BlurHorizontal.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/BlurVertical.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/Composite.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/CompositeOverlay.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/CopyRT.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/CopyTexture.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/Gen3DtexMipmap.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/GenHighTopFreq3Dtex.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/GenLowTopFreq3Dtex.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/Godray.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/GodrayAdd.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/HiZdownSampling.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/HiZdownSamplingPR.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/PostProcess.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/PostProcessWithBlur.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/Reprojection.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/Triangular.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud.vert.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricClouds_ShaderList.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloudWithDepth.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloudWithDepth.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud_2nd.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud_2nd.frag.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud_2ndWithDepth.comp.fsl',
        '$(SolutionDir)/Custom-Middleware/Ephemeris/VolumetricClouds/resources/Shaders/FSL/VolumetricCloud_2ndWithDepth.frag.fsl',
    }
    
    postbuildcommands
    {
        '{COPYFILE} "%{Common_3}/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" %{cfg.targetdir}',
        '{COPYFILE} "%{Common_3}/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" %{cfg.targetdir}',
        '{COPYDIR}  "%{Ephemeris}/Resources/Fonts" %{cfg.targetdir}/Fonts',
        
        '{COPYDIR}  "%{Ephemeris}/Sky/resources/Textures" %{cfg.targetdir}/Textures/Sky',
        '{COPYDIR}  "%{Ephemeris}/SpaceObjects/resources/Textures" %{cfg.targetdir}/Textures/SpaceObjects',
        '{COPYDIR}  "%{Ephemeris}/Terrain/resources/Textures" %{cfg.targetdir}/Textures/Terrain',
        '{COPYDIR}  "%{Ephemeris}/VolumetricClouds/resources/Textures" %{cfg.targetdir}/Textures/VolumetricClouds',
        
        '{COPYDIR}  "%{cfg.targetdir}/../OS/Shaders" %{cfg.targetdir}/Shaders',
        '{COPYDIR}  "%{cfg.targetdir}/../OS/CompiledShaders" %{cfg.targetdir}/CompiledShaders',
        
        '{COPYDIR}  "%{Ephemeris}/src/EphemerisExample/GPUCfg" %{cfg.targetdir}/GPUCfg',

        '{COPYDIR}  "%{Ephemeris}/src/EphemerisExample/Scripts" %{cfg.targetdir}/Scripts',
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
        