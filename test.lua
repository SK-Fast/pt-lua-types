---@type Part
local part = game["Environment"]["Part"]

---@param plr Player
game["Players"].PlayerAdded:Connect(function (plr)
    Chat.UnicastMessage("hi", plr)
    part.Material = PartMaterial.Neon
end)


---@type Part
local a = Instance.New("BaseScript")

a.Anchored = true

local netmsg = NetMessage.New()