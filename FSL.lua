require('vstudio')

local function fslShaderTarget(prj)
	premake.w('<Import Project="$(SolutionDir)/The-Forge/Common_3/Tools/ForgeShadingLanguage/VS/fsl.targets" />')
end

premake.override(premake.vstudio.vc2010.elements, "importExtensionTargets", function(base, prj)
	local calls = base(prj)
	table.insertafter(calls, premake.vstudio.vc2010.importExtensionTargets, fslShaderTarget)
	return calls
end)

local function fslShaderSettings(prj)
    premake.push('<FSLShader>')
    premake.w('<OutDir>$(OutDir)/Shaders</OutDir>')
    premake.w('<BinaryOutDir>$(OutDir)/CompiledShaders</BinaryOutDir>')
    premake.w('<Compile>true</Compile>')
    premake.w('<Language>VULKAN DIRECT3D11 DIRECT3D12</Language>')
    premake.pop('</FSLShader>')
end

premake.override(premake.vstudio.vc2010.elements, "itemDefinitionGroup", function(base, prj)
	local calls = base(prj)
	table.insertafter(calls, premake.vstudio.vc2010.itemDefinitionGroup, fslShaderSettings)
	return calls
end)

premake.override(premake.vstudio.vc2010, "project", function(base, prj)
    local calls = base(prj)
    if prj.name == "01_Transformations" then
	    premake.push('<ItemGroup>')
	    
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/basic.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/basic.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/crash.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/resources.h.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/ShaderList.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/skybox.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Examples_3/Unit_Tests/src/01_Transformations/Shaders/FSL/skybox.vert.fsl" />')
        
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/imgui.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/imgui.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/textured_mesh.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/textured_mesh.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/UI/Shaders/FSL/UI_ShaderList.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash2D.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/fontstash3D.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Common_3/Application/Fonts/Shaders/FSL/Fonts_ShaderList.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.frag.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/panini_projection.vert.fsl" />')
        premake.w('<FSLShader Include="$(SolutionDir)/The-Forge/Middleware_3/PaniniProjection/Shaders/FSL/Panini_ShaderList.fsl" />')
        
        premake.pop('</ItemGroup>')
    end
	return calls
end)