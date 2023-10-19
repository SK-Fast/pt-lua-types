---@type Part
local part = game["Environment"]["Part"]

---@param plr Player
game["Players"].PlayerAdded:Connect(function (plr)
    ---@param msg string
    plr.Chatted:Connect(function(msg)
        
    end)
end)