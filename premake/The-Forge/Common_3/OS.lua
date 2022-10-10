project "OS"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Common_3}/Application/CameraController.cpp",
        "%{Common_3}/Application/InputSystem.cpp",
        "%{Common_3}/Application/Profiler/GpuProfiler.cpp",
        "%{Common_3}/Application/Profiler/ProfilerBase.cpp",
        "%{Common_3}/Application/Screenshot.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui_demo.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui_draw.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui_widgets.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui_tables.cpp",
        "%{Common_3}/Application/UI/UI.cpp",
        "%{Common_3}/Game/Scripting/LuaManager.cpp",
        "%{Common_3}/Game/Scripting/LuaManagerImpl.cpp",
        "%{Common_3}/Game/Scripting/LuaSystem.cpp",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lapi.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lauxlib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbaselib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lbitlib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcode.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lcorolib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lctype.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldblib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldebug.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldo.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ldump.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lfunc.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lgc.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/linit.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/liolib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/llex.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmathlib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lmem.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/loadlib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lobject.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lopcodes.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/loslib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lparser.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstate.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstring.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lstrlib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltable.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltablib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/ltm.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lundump.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lutf8lib.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lvm.c",
        "%{Common_3}/Game/ThirdParty/OpenSource/lua-5.3.5/src/lzio.c",
        "%{Common_3}/Application/Fonts/FontSystem.cpp",
        "%{Common_3}/Application/Fonts/stbtt.cpp",
        "%{Common_3}/OS/CPUConfig.cpp",
        "%{Common_3}/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_windows.c",
        "%{Common_3}/OS/WindowSystem/WindowSystem.cpp",
        "%{Common_3}/Utilities/FileSystem/FileSystem.cpp",
        "%{Common_3}/Utilities/FileSystem/SystemRun.cpp",
        "%{Common_3}/Utilities/FileSystem/ZipFileSystem.c",
        "%{Common_3}/Utilities/Log/Log.c",
        "%{Common_3}/Utilities/Math/Algorithms.c",
        "%{Common_3}/Utilities/Math/StbDs.c",
        "%{Common_3}/Utilities/MemoryTracking/MemoryTracking.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/basis_universal/transcoder/basisu_transcoder.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/allocator_forge.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/assert.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/EAStdC/EAMemory.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/EAStdC/EASprintf.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/fixed_pool.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/hashtable.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/intrusive_list.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/numeric_limits.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/red_black_tree.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/string.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/EASTL/thread_support.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aescrypt.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aeskey.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt_brg.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_os.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_raw.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_zip.c",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_get_module_info.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_hook.cpp",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/rmem/src/rmem_lib.cpp",
        "%{Common_3}/Utilities/Threading/ThreadSystem.cpp",
        "%{Common_3}/Utilities/Timer.c",

        "%{Common_3}/Application/Config.h",
        "%{Common_3}/Application/Interfaces/IApp.h",
        "%{Common_3}/Application/Interfaces/ICameraController.h",
        "%{Common_3}/Application/Interfaces/IInput.h",
        "%{Common_3}/Application/Interfaces/IMiddleware.h",
        "%{Common_3}/Application/Interfaces/IProfiler.h",
        "%{Common_3}/Application/Interfaces/IScreenshot.h",
        "%{Common_3}/Application/Interfaces/IUI.h",
        "%{Common_3}/Application/Profiler/GpuProfiler.h",
        "%{Common_3}/Application/Profiler/ProfilerBase.h",
        "%{Common_3}/Application/Profiler/ProfilerHTML.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imconfig.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/imgui/imgui_internal.h",
        "%{Common_3}/Game/Interfaces/IScripting.h",
        "%{Common_3}/Game/Scripting/LuaManager.h",
        "%{Common_3}/Game/Scripting/LuaManagerCommon.h",
        "%{Common_3}/Game/Scripting/LuaManagerImpl.h",
        "%{Common_3}/Game/Scripting/LunaV.hpp",
        "%{Common_3}/Application/Fonts/Shaders/FSL/resources.h",
        "%{Common_3}/Graphics/GPUConfig.h",
        "%{Common_3}/Application/Interfaces/IFont.h",

        "%{Common_3}/OS/Windows/WindowsBase.cpp",
        "%{Common_3}/OS/Windows/WindowsFileSystem.cpp",
        "%{Common_3}/OS/Windows/WindowsLog.c",
        "%{Common_3}/OS/Windows/WindowsStackTraceDump.cpp",
        "%{Common_3}/OS/Windows/WindowsThread.c",
        "%{Common_3}/OS/Windows/WindowsTime.c",
        "%{Common_3}/OS/Windows/WindowsToolsFileSystem.cpp",
        "%{Common_3}/OS/Windows/WindowsWindow.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/AnimatedObject.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/Animation.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/Clip.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/ClipController.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/ClipMask.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/Rig.cpp",
        "%{Common_3}/Resources/AnimationSystem/Animation/SkeletonBatcher.cpp",
        
        "%{Common_3}/OS/CPUConfig.h",
        "%{Common_3}/OS/Interfaces/IOperatingSystem.h",
        "%{Common_3}/OS/Windows/WindowsStackTraceDump.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/AnimatedObject.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/Animation.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/Clip.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/ClipController.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/ClipMask.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/Rig.h",
        "%{Common_3}/Resources/AnimationSystem/Animation/SkeletonBatcher.h",
        "%{Common_3}/Utilities/Interfaces/IFileSystem.h",
        "%{Common_3}/Utilities/Interfaces/ILog.h",
        "%{Common_3}/Utilities/Interfaces/IMemory.h",
        "%{Common_3}/Utilities/Interfaces/IThread.h",
        "%{Common_3}/Utilities/Interfaces/ITime.h",
        "%{Common_3}/Utilities/Interfaces/IToolFileSystem.h",
        "%{Common_3}/Utilities/Log/Log.h",
        "%{Common_3}/Utilities/Math/Algorithms.h",
        "%{Common_3}/Utilities/Math/AlgorithmsImpl.h",
        "%{Common_3}/Utilities/Math/BStringHashMap.h",
        "%{Common_3}/Utilities/Math/MathTypes.h",
        "%{Common_3}/Utilities/RingBuffer.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/bstrlib/bstrlib.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aes.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aesopt.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/aestab.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_endian.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/brg_types.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/hmac.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha1.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/lib/brg/sha2.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_crypt.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_os.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_wzaes.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_strm_zlib.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/minizip/mz_zip.h",
        "%{Common_3}/Utilities/ThirdParty/OpenSource/zip/miniz.h",
        "%{Common_3}/Utilities/Threading/ThreadSystem.h",
        "%{Middleware_3}/PaniniProjection/Shaders/FSL/resources.h",
    }
     
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1"
    }

    includedirs
    {
        "%{VULKAN_SDK}/Include",
        "%{Common_3}/Resources/AnimationSystem/ThirdParty/OpenSource/ozz-animation/include",
    }

    links
    {
    }
    
    fsl_enable "true"
    fsl_out_dir "$(OutDir)/Shaders"
    fsl_binary_out_dir "$(OutDir)/CompiledShaders"
    fsl_language "VULKAN DIRECT3D11 DIRECT3D12"

    fsl_includes
    {
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

    filter "system:windows"
        toolset "v141"
        systemversion "10.0.17763.0"
        location "PC Visual Studio 2022"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        defines
        {
            "_CRT_SECURE_NO_WARNINGS",
            "_CRT_NONSTDC_NO_DEPRECATE",
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "on"