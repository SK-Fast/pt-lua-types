require "pt_declearations"

---@type Game
game = game

---@type Environment
game["Environment"] = game["Environment"]

---@type Environment
Environment = Environment

---@type Lighting
game["Lighting"] = game["Lighting"]

---@type Players
game["Players"] = game["Players"]

---@type ScriptService
game["ScriptService"] = game["ScriptService"]

---@type Hidden
game["Hidden"] = game["Hidden"]

---@type PlayerDefaults
game["PlayerDefaults"] = game["PlayerDefaults"]

---@type Backpack
game["PlayerDefaults"]["Backpack"] = game["PlayerDefaults"]["Backpack"]

---@type PlayerGUI
game["PlayerGUI"] = game["PlayerGUI"]

Instance = {
    ---Create new Instance
    ---@param name string
    ---@return Instance
    ---@meta
    New = function(name) end
}

---@type NetMessage
NetMessage = NetMessage

---@class RayResult
---@field Origin Vector3
---@field Direction Vector3
---@field Position Vector3
---@field Normal Vector3
---@field Distance number
---@field Instance Instance

---@type Vector3
Vector3 = Vector3

---@type Vector2
Vector2 = Vector2

---@type Vector4
Vector4 = Vector4

---@type Color
Color = Color

---@type CameraController
Camera = Camera

---@type ChatService
Chat = Chat

---@type DataStoreService
Datastore = Datastore

---@type HttpService
Http = Http

---@type InputService
Input = Input

---@type TweenService
Tween = Tween

---@class json
json = {
    ---@param jsonString string
    ---@return boolean
    isNull = function(jsonString) end,
    ---@return string
    null = function() end,
    ---@param jsonString string
    ---@return table
    parse = function(jsonString) end,
    ---@param jsonTable table
    ---@return string
    serialize = function(jsonTable) end,
}

---Provides the time in seconds that has passed since 1st of January of 1970.
---@return number
function tick() return tick() end

---Create a new execution thread
---@param callback function Function to execute
function spawn(callback) end

---Delay the execution
---@param seconds integer Delay in seconds
function wait(seconds) end

---@type BaseScript
script = script