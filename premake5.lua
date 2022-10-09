VULKAN_SDK = os.getenv("VULKAN_SDK")
require "FSL"

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

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "TheForge"
    include "The-Forge"
    include "The-Forge-Examples"
group ""
