if game.PlaceId == 7288936208 then
    game.ReplicatedStorage.AntiCheatTrigger:Remove()
    game:GetService("ReplicatedStorage").VARDisplay:Remove()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Raspelx/-/main/ss"))()
elseif game.PlaceId == 16624541876 then
-- ReplicatedStorage lokasyonunu al
local replicatedStorage = game:GetService("ReplicatedStorage")

-- RemoteEvent oluştur
local radollEvent = Instance.new("RemoteEvent")
radollEvent.Name = "Radoll"
radollEvent.Parent = replicatedStorage

wait(1)

local BlockedRemotes = {
    "Radoll","PassEvemt"
}

local Events = {
    Fire = true, 
    Invoke = true, 
    FireServer = true, 
    InvokeServer = true,
}

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        for i,v in pairs(BlockedRemotes) do
            if v == self.Name and not checkcaller() then return nil end
        end
    end
    return psuedoEnv.__index(self, index, ...)
end)
setreadonly(gameMeta, true)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Raspelx/-/main/cc"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Raspelx/-/main/ss"))()
end
