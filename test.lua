--##
---@type Part
local part = Environment["Part"]

local pos = part.Position + part.Position
local n = Environment.Raycast(Vector3.New(0,0,0), Vector3.New(0,1,0), 100, {})

---@param plr Player
game["Players"].PlayerAdded:Connect(function (plr)
    ---@param msg string
    plr.Chatted:Connect(function(msg)
        local ds = Datastore.GetDatastore("Player_" .. plr.UserID)
        ds.Loaded:Connect(function ()
            ds.Set("Coins", 100)
        end)
    end)
end)

Environment.ChildAdded:Connect(function()
    Camera.ClipThroughWalls = false
end)
