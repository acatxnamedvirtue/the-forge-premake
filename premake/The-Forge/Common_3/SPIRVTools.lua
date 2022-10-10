project "SPIRVTools"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/SpirvTools.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_cfg.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_cpp.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_cross.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_cross_parsed_ir.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_cross_util.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_glsl.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_hlsl.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_msl.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_parser.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/spirv_reflect.cpp",
        "%{Common_3}/Graphics/ThirdParty/OpenSource/SPIRV_Cross/SpirvTools.h",
    }
     
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1"
    }
    
    undefines
    {
    }

    includedirs
    {
    }

    links
    {
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
