---@diagnostic disable: lowercase-global

---@class DynValue Moonsharp Dynamic Value
---@class JSONNode Polytoria Internal JSON

---@enum TextAnchor
TextAnchor = {
	Left = 0,
	Center = 1,
	Right = 2,
	Justify = 3,
	Flush = 4,
}

---@enum HorizontalAlignmentOptions
HorizontalAlignmentOptions = {
    Left = 0,
	Center = 1,
	Right = 2,
	Justified = 3,
	Flush = 4,
	Geometry = 5,
}

---@enum VerticalAlignmentOptions
VerticalAlignmentOptions = {
    Top = 0,
	Middle = 1,
	Bottom = 2,
	Baseline = 3,
	Geometry = 4,
	Capline = 5,
}

---@class LuaEvent
LuaEvent = {}

---Connect to event signal
---@param callback function
function LuaEvent:Connect(callback) end

---Disconnet the existing listener
---@param callback function
function LuaEvent:Disconnect(callback) end

---@class Vector4
---@operator add(Vector4): Vector4
---@operator sub(Vector4): Vector4
---@operator mul(Vector4): Vector4
---@operator div(Vector4): Vector4

---@class Vector3
---@operator add(Vector3): Vector3
---@operator sub(Vector3): Vector3
---@operator mul(Vector3): Vector3
---@operator div(Vector3): Vector3

---@class Vector2
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2): Vector2
---@operator div(Vector2): Vector2