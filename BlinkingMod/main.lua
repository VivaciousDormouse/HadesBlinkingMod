if not BlinkingMod.Config.Enabled then return end


local mod = "VivaciousDormouse-BlinkingMod"
local blink_package = "VivaciousDormouse-BlinkingMod"

ModUtil.WrapBaseFunction( "SetupMap", function(base)
    DebugPrint({Text = "@"..mod.." Trying to load package "..blink_package..".pkg"})
    LoadPackages({Name = blink_package})
    return base()
end)


ModUtil.WrapBaseFunction( "DisplayTextLine", function(baseFunc, screen, source, line, parentLine)
    DebugPrint({Text = "Hi"})
    -- DebugPrint({Text = "@"..mod.." Trying to load package "..package..".pkg"})
    -- LoadPackages({Name = package})
	
    return baseFunc(screen, source, line, parentLine)
end)


OnAnyLoad{ "DeathArea", function (triggerArgs)
    DebugPrint({Text = "Hello World!"})
end}