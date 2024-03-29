local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ML | Skate ",
    SubTitle = "Premium",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Transparency = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
    Game = Window:AddTab({ Title = "Game", Icon = "" }),
    Character = Window:AddTab({ Title = "Character", Icon = "" }),
    Teams = Window:AddTab({ Title = "Teams", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    local Toggle = Tabs.Main:AddToggle("AutoFarm", {Title = "Auto Farm (BETA)", Default = false })

    Toggle:OnChanged(function()
    end)

    Options.AutoFarm:SetValue(false)

    local Toggle = Tabs.Main:AddToggle("BetterReact", {Title = "Better React", Default = false })

    Toggle:OnChanged(function()
    end)

    Options.BetterReact:SetValue(false)

    local Toggle = Tabs.Main:AddToggle("Reach", {Title = "Reach", Default = false })

    Toggle:OnChanged(function()
        game.Players.LocalPlayer.Character.TackleHitbox.Part.Size = Vector3.new(4, 1, 2)
    end)

    Options.Reach:SetValue(false)


    
    local Slider = Tabs.Main:AddSlider("Radius", {
        Title = "Radius",
        Default = 4,
        Min = 4,
        Max = 100,
        Rounding = 1,
        Callback = function(ReachRadius)
            game.Players.LocalPlayer.Character.TackleHitbox.Part.Size = Vector3.new(ReachRadius, ReachRadius, ReachRadius)
        end
    })

    ReachSlider:OnChanged(function(ReachRadius)
    end)
end

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Skate",
    Content = "The script has been loaded.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
