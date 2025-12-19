if not BlinkingMod.Config.Enabled then return end


local mod = "VivaciousDormouse-BlinkingMod"
local blink_package = "VivaciousDormouse-BlinkingMod"

ModUtil.WrapBaseFunction( "SetupMap", function(base)
    DebugPrint({Text = "@"..mod.." Trying to load package "..blink_package..".pkg"})
    LoadPackages({Name = blink_package})
    return base()
end)
