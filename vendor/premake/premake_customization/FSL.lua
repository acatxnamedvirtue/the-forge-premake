require('vstudio')

premake.api.register
{
    name = "fsl_enable",
    scope = "project",
    kind = "string",
    tokens = false,
}

premake.api.register
{
    name = "fsl_out_dir",
    scope = "project",
    kind = "path",
    tokens = true,
}

premake.api.register
{
    name = "fsl_binary_out_dir",
    scope = "project",
    kind = "path",
    tokens = true,
}

premake.api.register
{
    name = "fsl_compile",
    scope = "project",
    kind = "string",
    tokens = false,
}

premake.api.register
{
    name = "fsl_language",
    scope = "project",
    kind = "string",
    tokens = false,
}

premake.api.register
{
    name = "fsl_includes",
    scope = "project",
    kind = "list:string",
    tokens = true,
}

local function fslShaderTarget(prj)
    if prj.fsl_enable then
	    premake.w('<Import Project="$(SolutionDir)/The-Forge/Common_3/Tools/ForgeShadingLanguage/VS/fsl.targets" />')
    end
end

premake.override(premake.vstudio.vc2010.elements, "importExtensionTargets", function(base, prj)
	local calls = base(prj)
	table.insertafter(calls, premake.vstudio.vc2010.importExtensionTargets, fslShaderTarget)
	return calls
end)

local function fslShaderSettings(prj)
    premake.push('<FSLShader>')
    
    if prj.fsl_out_dir then
        premake.w('<OutDir>' .. prj.fsl_out_dir .. '</OutDir>')
    end
    
    if prj.fsl_binary_out_dir then
        premake.w('<BinaryOutDir>' .. prj.fsl_binary_out_dir .. '</BinaryOutDir>')
    end
    
    if prj.fsl_compile then
        premake.w('<Compile>' .. prj.fsl_compile .. '</Compile>')
    end
    
    if prj.fsl_language then
        premake.w('<Language>' .. prj.fsl_language .. '</Language>')
    end
    
    premake.pop('</FSLShader>')
end

premake.override(premake.vstudio.vc2010.elements, "itemDefinitionGroup", function(base, prj)
	local calls = base(prj)
	table.insertafter(calls, premake.vstudio.vc2010.itemDefinitionGroup, fslShaderSettings)
	return calls
end)

premake.override(premake.vstudio.vc2010, "project", function(base, prj)
    local calls = base(prj)
    if prj.fsl_includes and #prj.fsl_includes > 0 then
	    premake.push('<ItemGroup>')
	    
        for _, path in ipairs(prj.fsl_includes) do
            premake.w('<FSLShader Include="' .. path .. '" />')
        end
        
        premake.pop('</ItemGroup>')
    end
	return calls
end)