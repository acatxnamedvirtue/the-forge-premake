VULKAN_SDK = os.getenv("VULKAN_SDK")
require "vendor/premake/premake_customization/FSL"

workspace "The-Forge-Premake"
    architecture "x86_64"
    startproject "01_Transformations"

    configurations
    {
        "Debug",
        "Release",
    }

    flags
    {
        "MultiProcessorCompile"
    }

Common_3 = "%{wks.location}/The-Forge/Common_3"
Examples_3 = "%{wks.location}/The-Forge/Examples_3"
Middleware_3 = "%{wks.location}/The-Forge/Middleware_3"
Art = "%{wks.location}/The-Forge/Art"

Aura = "%{wks.location}/Custom-Middleware/Aura"
Ephemeris = "%{wks.location}/Custom-Middleware/Ephemeris"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "TheForge"
    include "premake/The-Forge/Common_3/OS"
    include "premake/The-Forge/Common_3/Renderer"
    include "premake/The-Forge/Common_3/gainputstatic"
    include "premake/The-Forge/Common_3/SPIRVTools"
    include "premake/The-Forge/Common_3/ozz_base"
    include "premake/The-Forge/Common_3/ozz_animation"
group ""

group "Unit_Tests"
    include "premake/The-Forge/Examples_3/Unit_Tests/01_Transformations"
    include "premake/The-Forge/Examples_3/Unit_Tests/03_MultiThread"
    include "premake/The-Forge/Examples_3/Unit_Tests/04_ExecuteIndirect"
    include "premake/The-Forge/Examples_3/Unit_Tests/06_MaterialPlayground"
    include "premake/The-Forge/Examples_3/Unit_Tests/07_Tessellation"
    include "premake/The-Forge/Examples_3/Unit_Tests/09_LightShadowPlayground"
    include "premake/The-Forge/Examples_3/Unit_Tests/09a_HybridRaytracing"
    include "premake/The-Forge/Examples_3/Unit_Tests/10_ScreenSpaceReflections"
    include "premake/The-Forge/Examples_3/Unit_Tests/11_MultiGPU"
    include "premake/The-Forge/Examples_3/Unit_Tests/11a_UnlinkedMultiGPU"
    include "premake/The-Forge/Examples_3/Unit_Tests/12_ZipFileSystem"
    include "premake/The-Forge/Examples_3/Unit_Tests/14_WaveIntrinsics"
    include "premake/The-Forge/Examples_3/Unit_Tests/15_Transparency"
    include "premake/The-Forge/Examples_3/Unit_Tests/15a_VisibilityBufferOIT"
    include "premake/The-Forge/Examples_3/Unit_Tests/16_Raytracing"
    include "premake/The-Forge/Examples_3/Unit_Tests/17_EntityComponentSystem"
    include "premake/The-Forge/Examples_3/Unit_Tests/18_VirtualTexture"
    include "premake/The-Forge/Examples_3/Unit_Tests/19_CodeHotReload"
    include "premake/The-Forge/Examples_3/Unit_Tests/21_Animations"
    include "premake/The-Forge/Examples_3/Unit_Tests/28_Skinning"
    include "premake/The-Forge/Examples_3/Unit_Tests/33_YUV"
    include "premake/The-Forge/Examples_3/Unit_Tests/34_Input"
    include "premake/The-Forge/Examples_3/Unit_Tests/35_VariableRateShading"
    include "premake/The-Forge/Examples_3/Unit_Tests/36_AlgorithmsAndContainers"
    include "premake/The-Forge/Examples_3/Unit_Tests/37_PrecomputedVolumeDLUT"
    include "premake/The-Forge/Examples_3/Unit_Tests/38_AmbientOcclusion_GTAO"
group ""

group "Aura"
    include "premake/The-Forge/Examples_3/Aura/Aura"
group ""

group "Ephemeris"
    include "premake/The-Forge/Examples_3/Ephemeris/Ephemeris"
group ""

group "Visibility_Buffer"
    include "premake/The-Forge/Examples_3/Visibility_Buffer/Visibility_Buffer"
group ""