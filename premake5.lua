VULKAN_SDK = os.getenv("VULKAN_SDK")
require "premake/FSL"

workspace "The-Forge-Premake"
    architecture "x86_64"
    startproject "01_Transformations"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    flags
    {
        "MultiProcessorCompile"
    }

Common_3 = "%{wks.location}/The-Forge/Common_3"
Examples_3 = "%{wks.location}/The-Forge/Examples_3"
Middleware_3 = "%{wks.location}/The-Forge/Middleware_3"
Art = "%{wks.location}/The-Forge/Art"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "TheForge"
    include "premake/the-forge"
group ""
group "Unit_Tests"
    include "premake/01_Transformations"
    include "premake/03_MultiThread"
    include "premake/04_ExecuteIndirect"
    include "premake/06_MaterialPlayground"
    include "premake/07_Tessellation"
    include "premake/09_LightShadowPlayground"
    include "premake/09a_HybridRaytracing"
    include "premake/10_ScreenSpaceReflections"
    include "premake/11_MultiGPU"
    include "premake/11a_UnlinkedMultiGPU"
    include "premake/12_ZipFileSystem"
    include "premake/14_WaveIntrinsics"
    include "premake/15_Transparency"
    include "premake/15a_VisibilityBufferOIT"
    include "premake/16_Raytracing"
    include "premake/17_EntityComponentSystem"
    include "premake/18_VirtualTexture"
    include "premake/19_CodeHotReload"
    include "premake/21_Animations"
    include "premake/28_Skinning"
    include "premake/33_YUV"
    include "premake/34_Input"
    include "premake/35_VariableRateShading"
    include "premake/36_AlgorithmsAndContainers"
    include "premake/37_PrecomputedVolumeDLUT"
    include "premake/38_AmbientOcclusion_GTAO"
group ""
