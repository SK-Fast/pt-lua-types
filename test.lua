---@type Part
local part = game["Environment"]["Part"]

---@param plr Player
game["Players"].PlayerAdded:Connect(function (plr)
    Chat.UnicastMessage("hi", plr)
    part.Material = PartMaterial.Neon
end)