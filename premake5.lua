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

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "TheForge"
    include "premake/the-forge"
    include "premake/01_Transformations"
    include "premake/03_MultiThread"
group ""
