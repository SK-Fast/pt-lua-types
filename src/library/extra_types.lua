---@diagnostic disable: lowercase-global

---@class JSONNode Polytoria Internal JSON Node

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
---@field magnitude number The length of this vector
---@field sqrMagnitude number The squared length of this vector
---@field normalized number Returns this vector with a magnitude of 1
---@field x number
---@field y number
---@field z number
---@field w number

---@class Vector3
---@operator add(Vector3): Vector3
---@operator sub(Vector3): Vector3
---@operator mul(Vector3): Vector3
---@operator div(Vector3): Vector3
---@field magnitude number The length of this vector
---@field sqrMagnitude number The squared length of this vector
---@field normalized number Returns this vector with a magnitude of 1
---@field x number
---@field y number
---@field z number

---@class Vector2
---@operator add(Vector2): Vector2
---@operator sub(Vector2): Vector2
---@operator mul(Vector2): Vector2
---@operator div(Vector2): Vector2
---@field magnitude number The length of this vector
---@field sqrMagnitude number The squared length of this vector
---@field normalized number Returns this vector with a magnitude of 1
---@field x number
---@field y number

---@class Color
---@operator add(Color): Color
---@operator sub(Color): Color
---@operator mul(Color): Color
---@operator div(Color): Color
---@field r number
---@field g number
---@field b number
---@field a number
