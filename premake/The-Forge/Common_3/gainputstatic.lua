project "gainputstatic"
    kind "StaticLib"
    language "C++"
    cppdialect "C++14"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputAllocator.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputInputDeltaState.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputInputDevice.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputInputManager.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputInputMap.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputInputState.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputMapFilters.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/builtin/GainputInputDeviceBuiltIn.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputDev.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputMemoryStream.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gainput.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputButtonStickGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputDoubleClickGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputHoldGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputPinchGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputRotateGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputSimultaneouslyDownGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/gestures/GainputTapGesture.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboard.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouse.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePad.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/recorder/GainputInputPlayer.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/recorder/GainputInputRecorder.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/recorder/GainputInputRecording.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouch.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/GainputHID.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/GainputHIDWhitelist.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/HIDParserPS4Controller.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/HIDParserPS5Controller.cpp",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/hidapi/windows/hid.c",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputHelpersEvdev.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/GainputWindows.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/builtin/GainputInputDeviceBuiltInAndroid.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/builtin/GainputInputDeviceBuiltInImpl.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/builtin/GainputInputDeviceBuiltInIos.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/builtin/GainputInputDeviceBuiltInNull.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputDev.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputDevProtocol.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputMemoryStream.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/dev/GainputStream.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardAndroid.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardEvdev.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardImpl.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardLinux.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardNull.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardWin.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputInputDeviceKeyboardWinRaw.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/keyboard/GainputKeyboardKeyNames.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseEvdev.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseImpl.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseLinux.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseMac.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseNull.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseWin.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputInputDeviceMouseWinRaw.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/mouse/GainputMouseInfo.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadAndroid.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadImpl.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadIos.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadLinux.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadMac.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadNull.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/pad/GainputInputDevicePadWin.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouchAndroid.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouchImpl.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouchIos.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputInputDeviceTouchNull.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/GainputTouchInfo.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputAllocator.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputContainers.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputDebugRenderer.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputHelpers.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDeltaState.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDevice.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDeviceBuiltIn.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDeviceKeyboard.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDeviceMouse.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDevicePad.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputDeviceTouch.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputListener.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputManager.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputMap.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputInputState.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputIos.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputLog.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/GainputMapFilters.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gainput.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputButtonStickGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputDoubleClickGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputGestures.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputHoldGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputPinchGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputRotateGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputSimultaneouslyDownGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/gestures/GainputTapGesture.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/recorder/GainputInputPlayer.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/recorder/GainputInputRecorder.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/include/gainput/recorder/GainputInputRecording.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/GainputHID.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/GainputHIDTypes.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/GainputHIDWhitelist.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/HIDParserPS4Controller.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/hid/hidparsers/HIDParserPS5Controller.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/gainput/touch/gainputinputdevicetouchwin.h",
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source/hidapi/hidapi.h",
    }
     
    defines
    {
        "_ITERATOR_DEBUG_LEVEL=1",
        "GAINPUT_LIB_DYNAMIC=0",
    }
    
    undefines
    {
        "UNICODE",
    }

    includedirs
    {
        "%{Common_3}/Application/ThirdParty/OpenSource/gainput/lib/source",
    }

    links
    {
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
