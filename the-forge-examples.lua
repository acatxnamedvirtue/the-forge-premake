project "01_Transformations"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
       "The-Forge/Examples_3/Unit_Tests/src/01_Transformations/*.*"
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
        "_ITERATOR_DEBUG_LEVEL=1"
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include"
    }

    links
    {
        "The-Forge",
        "%{VULKAN_SDK}/Lib/vulkan-1",
    }
    
    postbuildcommands
    {
        '{COPYFILE} "%{wks.location}/The-Forge/Common_3/OS/ThirdParty/OpenSource/winpixeventruntime/bin/WinPixEventRuntime.dll" %{cfg.targetdir}',
        '{COPYFILE} "%{wks.location}/The-Forge/Common_3/Graphics/ThirdParty/OpenSource/ags/ags_lib/lib/amd_ags_x64.dll" %{cfg.targetdir}',
        '{COPYDIR} "%{wks.location}/The-Forge/Examples_3/Unit_Tests/UnitTestResources" %{cfg.targetdir}',
        '{COPYDIR} "%{wks.location}/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders" %{cfg.targetdir}/Shaders'
    }
    
    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        buildoptions
        {
            "/Zc:wchar_t"
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