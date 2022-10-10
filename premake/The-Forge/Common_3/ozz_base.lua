project "ozz_base"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/endianness.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/gtest_helper.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/memory/allocator.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/memory/allocator.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/platform.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/platform.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/map.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/set.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/string.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/string_archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/containers/string_archive.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/vector.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/containers/vector_archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/io/archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/io/archive.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/io/archive_traits.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/gtest_math_helper.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/math_ex.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/math_constant.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/math_archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/maths/math_archive.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/soa_math_archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/maths/soa_math_archive.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/base/maths/simd_math_archive.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/base/maths/simd_math_archive.cc",
    }
    
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1",
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