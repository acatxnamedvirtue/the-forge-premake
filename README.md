# The Forge Premake

This repository contains a Premake script to generate .sln files for use in Visual Studio or JetBrains Rider,
which you can use to build [The-Forge](https://github.com/ConfettiFX/The-Forge)

Currently, the first "Unit Test" builds and runs on Windows with Vulkan/DX11/DX12 enabled.

The repo includes a (very brittle, hardcoded) custom module extending premake to configure and run The-Forge's
FSL [shader compiler tool](https://github.com/ConfettiFX/The-Forge/wiki/The-Forge-Shading-Language-(FSL)#visual-studio).

I will try to improve this.

Note: I am not a Premake, C++, or The-Forge expert, but if you're looking for a way to integrate The-Forge into your own
premake or cmake based build system, I hope that this helps!

## Prerequisites

1. VulkanSDK 1.2.162.0
2. Windows 10 SDK (10.0.17763.0)
3. VC++ 2017 version 15.9 v14.16 latest v141 tools

Make sure the VULKAN_SDK environment variable is set to the SDK location. The installer should handle this for you.

## Build steps

1. Clone this repo `git clone https://github.com/acatxnamedvirtue/the-forge-premake.git`
2. Update the submodule to pull in The-Forge's source `git init && git submodule update`
3. Run `PRE_BUILD.bat` in the `The-Forge` folder to download assets needed for the examples
4. Run `GenVS.bat` to use the vendored premake5 exe, or run `premake5 vs2022` from your terminal
5. Open `The-Forge-Premake.sln` in VS or Rider, then build and run `01_Transformations`

###

#### Special Thanks to a few prior art repos:

https://github.com/VoidAnchor/TheForgeTheCmake

https://github.com/rextimmy/the-forge-glfw

https://github.com/learn-computer-graphics/the-forge-sampless