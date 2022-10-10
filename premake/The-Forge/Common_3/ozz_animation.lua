project "ozz_animation"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/animation.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/animation.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/ik_aim_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/ik_two_bone_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/animation_keyframe.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/blending_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/animation_utils.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/blending_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/local_to_model_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/ik_aim_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/ik_two_bone_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/local_to_model_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/sampling_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/sampling_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/skeleton.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/skeleton.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/skeleton_utils.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/skeleton_utils.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/track.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/track.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/track_sampling_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/track_sampling_job.cc",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/track_triggering_job.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include/ozz/animation/runtime/track_triggering_job_stl.h",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/src/animation/runtime/track_triggering_job.cc",
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
