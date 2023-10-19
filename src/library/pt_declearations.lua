require "extar_types.lua"

---@class Backpack : Instance

---@class BaseScript : Instance
---@field Item any
---@field Call fun(function: string,args: table): nil

---@class BodyPosition : Instance
---@field TargetPosition Vector3
---@field Force number
---@field AcceptanceDistance number

---@class BoolValue : ValueBase
---@field Value boolean

---@class CameraController
---@field Mode CameraMode
---@field FOV number
---@field Orthographic boolean
---@field OrthographicSize number
---@field Distance number
---@field MinDistance number
---@field MaxDistance number
---@field HorizontalSpeed number
---@field VerticalSpeed number
---@field ScrollSensitivity number
---@field ClipThroughWalls boolean
---@field FlySpeed number
---@field FastFlySpeed number
---@field FreeLookSensitivity number
---@field LerpSpeed number
---@field FollowLerp boolean
---@field Position Vector3
---@field Rotation Vector3
---@field IsFirstPerson boolean
---@field LookAt fun(target: Vector3): nil

---@class Climbable : Part
---@field ClimbSpeed number

---@class ColorValue : ValueBase
---@field Value Color

---@class Datastore
---@field Key string
---@field Loading boolean
---@field Loaded LuaEvent
---@field Get fun(key: string,callback: any): nil
---@field Set fun(key: string,value: any,callback: any): nil
---@field Remove fun(key: string,callback: any): nil

---@class DataStoreService
---@field GetDatastore fun(key: string,callback: any): Datastore

---@class Decal : DynamicInstance
---@field ImageID string
---@field ImageType ImageType
---@field TextureScale Vector2

---@class DynamicInstance : Instance
---@field Position Vector3
---@field Rotation Vector3
---@field LocalPosition Vector3
---@field LocalRotation Vector3
---@field Size Vector3
---@field Forward Vector3
---@field Up Vector3
---@field Right Vector3
---@field LookAt fun(dynamicInstance: DynamicInstance): nil
---@field Translate fun(translation: Vector3): nil

---@class Environment : Instance
---@field Skybox SkyboxPreset
---@field Gravity Vector3
---@field FogEnabled boolean
---@field FogStartDistance number
---@field FogEndDistance number
---@field FogColor Color
---@field CreateExplosion fun(position: Vector3,radius: number,force: number,affectKinematic: boolean,func: any): nil
---@field Raycast fun(origin: Vector3,direction: Vector3,maxDistance: number,ignoreList: table): RayResult
---@field RaycastAll fun(origin: Vector3,direction: Vector3,maxDistance: number,ignoreList: table): table

---@class Game : Instance
---@field GameID integer
---@field PlayersConnected integer
---@field InstanceCount integer
---@field LocalInstanceCount integer
---@field Rendered LuaEvent

---@class GUI : Instance
---@field Visible boolean

---@class Hidden : Instance

---@class ImageSky : SkyBase
---@field TopId integer
---@field BottomId integer
---@field LeftId integer
---@field RightId integer
---@field FrontId integer
---@field BackId integer

---@class Instance
---@field Item Instance
---@field Name string
---@field ClassName string
---@field Shared any
---@field Parent Instance
---@field ChildRemoved LuaEvent
---@field ChildAdded LuaEvent
---@field Touched LuaEvent
---@field TouchEnded LuaEvent
---@field Clicked LuaEvent
---@field MouseEnter LuaEvent
---@field MouseExit LuaEvent
---@field GetParent fun(): nil
---@field SetParent fun(parent: Instance): nil
---@field FindChild fun(name: string): Instance
---@field GetChildren fun(): nil
---@field GetChildrenOfClass fun(className: string): table
---@field FindChildByClass fun(className: string): Instance
---@field IsA fun(className: string): boolean
---@field IsDescendantOf fun(parent: Instance): boolean
---@field Destroy fun(time: number): nil
---@field Delete fun(time: number): nil
---@field New fun(className: string,parent: Instance): self
---@field Clone fun(): nil

---@class InstanceValue : Instance
---@field Value Instance

---@class IntValue : ValueBase
---@field Value integer

---@class Lighting : Instance
---@field SunBrightness number
---@field SunColor Color
---@field AmbientColor Color
---@field AmbientSource AmbientSource
---@field Shadows boolean

---@class LocalScript : BaseScript

---@class MeshPart : Part
---@field AssetID integer

---@class Model : DynamicInstance

---@class NetworkEvent : Instance
---@field InvokedServer LuaEvent
---@field InvokedClient LuaEvent
---@field InvokeServer fun(msg: NetMessage): nil
---@field InvokeClient fun(msg: NetMessage,player: Player): nil
---@field InvokeClients fun(msg: NetMessage): nil

---@class NPC : DynamicInstance
---@field MoveTarget Instance
---@field HeadColor Color
---@field TorsoColor Color
---@field LeftArmColor Color
---@field RightArmColor Color
---@field LeftLegColor Color
---@field RightLegColor Color
---@field Anchored boolean
---@field Health number
---@field MaxHealth number
---@field ShirtID integer
---@field PantsID integer
---@field FaceID integer
---@field Grounded boolean
---@field Died LuaEvent
---@field Respawn fun(): nil
---@field Jump fun(): nil

---@class NumberValue : ValueBase
---@field Value number

---@class Part : DynamicInstance
---@field Color Color
---@field Anchored boolean
---@field CanCollide boolean
---@field IsSpawn boolean
---@field HideStuds boolean
---@field Shape PartShape
---@field Material PartMaterial
---@field Velocity Vector3
---@field Drag number
---@field AngularDrag number
---@field Mass number
---@field AngularVelocity Vector3
---@field UseGravity boolean
---@field MovePosition fun(pos: Vector3): nil
---@field MoveRotation fun(rot: Vector3): nil

---@class PlayerDefaults : Instance
---@field MaxHealth number
---@field WalkSpeed number
---@field SprintSpeed number
---@field StaminaEnabled boolean
---@field Stamina number
---@field MaxStamina number
---@field StaminaRegen number
---@field JumpPower number
---@field RespawnTime number
---@field ChatColor Color

---@class PlayerGUI : Instance
---@field Opacity number
---@field Interactable boolean

---@class Player : Instance
---@field RespawnTime number
---@field Velocity Vector3
---@field MaxHealth number
---@field Health number
---@field WalkSpeed number
---@field SprintSpeed number
---@field StaminaEnabled boolean
---@field Stamina number
---@field MaxStamina number
---@field StaminaRegen number
---@field JumpPower number
---@field Position Vector3
---@field Rotation Vector3
---@field ChatColor Color
---@field CanMove boolean
---@field IsInputFocused boolean
---@field SittingIn Seat
---@field Forward Vector3
---@field Right Vector3
---@field IsAdmin boolean
---@field IsCreator boolean
---@field UserID integer
---@field Chatted LuaEvent
---@field Died LuaEvent
---@field Respawned LuaEvent
---@field OwnsItem fun(assetId: integer,callOnComplete: any): nil
---@field Kick fun(reason: string): nil
---@field Sit fun(seat: Seat): nil
---@field Unsit fun(addForce: boolean): nil
---@field Respawn fun(): nil

---@class Players : Instance
---@field PlayerCollisionEnabled boolean
---@field LocalPlayer Player
---@field PlayerAdded LuaEvent
---@field PlayerRemoved LuaEvent
---@field GetPlayers fun(): nil
---@field GetPlayer fun(username: string): Player
---@field GetPlayerByID fun(id: integer): Player

---@class PointLight : DynamicInstance
---@field Range number
---@field Brightness number
---@field Color Color
---@field Shadows boolean

---@class RemoveEvent : Instance
---@field Invoked LuaEvent
---@field Invoke fun(val: Instance): nil

---@class ScriptInstance : BaseScript

---@class ScriptService : Instance

---@class Seat : Part
---@field Occupant Player
---@field Sat LuaEvent
---@field Vacated LuaEvent

---@class SkyBase : Instance

---@class Sound : DynamicInstance
---@field Playing boolean
---@field SoundID integer
---@field Pitch number
---@field Length number
---@field Size Vector3
---@field Rotation Vector3
---@field Time number
---@field Autoplay boolean
---@field Loop boolean
---@field PlayInWorld boolean
---@field Volume number
---@field Play fun(): nil
---@field Stop fun(): nil

---@class Spotlight : DynamicInstance
---@field Range number
---@field Angle number
---@field Brightness number
---@field Color Color
---@field Shadows boolean

---@class StringValue : ValueBase
---@field Value string

---@class Text3D : DynamicInstance
---@field Text string
---@field Color Color
---@field FontSize number
---@field FaceCamera boolean
---@field HorizontalAlignment HorizontalAlignmentOptions
---@field VerticalAlignment VerticalAlignmentOptions

---@class Tool : DynamicInstance
---@field Activated LuaEvent
---@field Play fun(anim: string): nil

---@class Truss : Climbable

---@class UIButton : UILabel

---@class UIField : Instance
---@field PositionOffset Vector2
---@field PositionRelative Vector2
---@field Rotation number
---@field SizeOffset Vector2
---@field SizeRelative Vector2
---@field PivotPoint Vector2
---@field Visible boolean
---@field MouseUp LuaEvent
---@field MouseDown LuaEvent

---@class UIHorizontalLayout : UIHVLayout

---@class UIHVLayout : UIField
---@field Spacing number
---@field ChildControlWidth boolean
---@field ChildControlHeight boolean
---@field ChildScaleWidth boolean
---@field ChildScaleHeight boolean
---@field ChildForceExpandWidth boolean
---@field ChildForceExpandHeight boolean
---@field PaddingLeft integer
---@field PaddingRight integer
---@field PaddingTop integer
---@field PaddingBottom integer
---@field ChildAlignment TextAnchor
---@field ReverseAlignment boolean

---@class UIImage : UIField
---@field ImageID string
---@field ImageType ImageType
---@field Color Color

---@class UILabel : UIView
---@field Text string
---@field TextColor Color
---@field JustifyText TextJustify
---@field VerticalAlign TextVerticalAlign
---@field FontSize number
---@field MaxFontSize number
---@field AutoSize boolean
---@field Font TextFontPreset

---@class UITextInput : UIView
---@field Text string
---@field TextColor Color
---@field JustifyText TextJustify
---@field VerticalAlign TextVerticalAlign
---@field FontSize number
---@field MaxFontSize number
---@field AutoSize boolean
---@field Font TextFontPreset
---@field Placeholder string
---@field PlaceholderColor Color
---@field IsMultiline boolean
---@field IsReadOnly boolean
---@field Changed LuaEvent
---@field Submitted LuaEvent

---@class UIVerticalLayout : UIHVLayout

---@class UIView : UIField
---@field BorderColor Color
---@field BorderWidth number
---@field Color Color
---@field CornerRadius number

---@class ValueBase : Instance
---@field Changed LuaEvent

---@class Vector3Value : ValueBase
---@field Value Vector3

---@enum AmbientSource
AmbientSource = {
	Skybox = 0,
	AmbientColor = 1,
}

---@enum CameraMode
CameraMode = {
	FollowPlayer = 0,
	Free = 1,
	Scripted = 2,
}

---@enum ChatWindowState
ChatWindowState = {
	Inactive = 0,
	Active = 1,
	Focused = 2,
}

---@enum ImageType
ImageType = {
	Asset = 0,
	AssetThumbnail = 1,
	PlaceThumbnail = 2,
	UserAvatar = 3,
	UserAvatarHeadshot = 4,
	GuildIcon = 5,
}

---@enum NetworkType
NetworkType = {
	Host = 0,
	Server = 1,
	Client = 2,
}

---@enum PartMaterial
PartMaterial = {
	SmoothPlastic = 0,
	Wood = 1,
	Concrete = 2,
	Neon = 3,
	Metal = 4,
	Brick = 5,
	Grass = 6,
	Dirt = 7,
	Stone = 8,
	Snow = 9,
	Ice = 10,
	RustyIron = 11,
	Sand = 12,
	Sandstone = 13,
	Plastic = 14,
	Plywood = 15,
	Planks = 16,
	MetalGrid = 17,
	MetalPlate = 18,
}

---@enum PartShape
PartShape = {
	Brick = 0,
	Ball = 1,
	Cylinder = 2,
	Wedge = 3,
	Truss = 4,
	TrussFrame = 5,
	Bevel = 6,
	QuarterPipe = 7,
}

---@enum SkyboxPreset
SkyboxPreset = {
	Day1 = 0,
	Day2 = 1,
	Day3 = 2,
	Day4 = 3,
	Day5 = 4,
	Day6 = 5,
	Day7 = 6,
	Morning1 = 7,
	Morning2 = 8,
	Morning3 = 9,
	Morning4 = 10,
	Night1 = 11,
	Night2 = 12,
	Night3 = 13,
	Night4 = 14,
	Night5 = 15,
	Sunset1 = 16,
	Sunset2 = 17,
	Sunset3 = 18,
	Sunset4 = 19,
	Sunset5 = 20,
}

---@enum SyncMode
SyncMode = {
	Default = 0,
	ForceSync = 1,
	None = 2,
}

---@enum TextFontPreset
TextFontPreset = {
	SourceSans = 0,
	PressStart2P = 1,
	Montserrat = 2,
	RobotoMono = 3,
	Rubik = 4,
	Poppins = 5,
	Domine = 6,
	Fredoka = 7,
	ComicNeue = 8,
	Orbitron = 9,
}

---@enum TextJustify
TextJustify = {
	Left = 0,
	Center = 1,
	Right = 2,
	Justify = 3,
	Flush = 4,
}

---@enum TextVerticalAlign
TextVerticalAlign = {
	Top = 0,
	Middle = 1,
	Bottom = 2,
}

---@enum TweenType
TweenType = {
	notUsed = 0,
	linear = 1,
	easeOutQuad = 2,
	easeInQuad = 3,
	easeInOutQuad = 4,
	easeInCubic = 5,
	easeOutCubic = 6,
	easeInOutCubic = 7,
	easeInQuart = 8,
	easeOutQuart = 9,
	easeInOutQuart = 10,
	easeInQuint = 11,
	easeOutQuint = 12,
	easeInOutQuint = 13,
	easeInSine = 14,
	easeOutSine = 15,
	easeInOutSine = 16,
	easeInExpo = 17,
	easeOutExpo = 18,
	easeInOutExpo = 19,
	easeInCirc = 20,
	easeOutCirc = 21,
	easeInOutCirc = 22,
	easeInBounce = 23,
	easeOutBounce = 24,
	easeInOutBounce = 25,
	easeInBack = 26,
	easeOutBack = 27,
	easeInOutBack = 28,
	easeInElastic = 29,
	easeOutElastic = 30,
	easeInOutElastic = 31,
	easeSpring = 32,
	easeShake = 33,
	punch = 34,
	once = 35,
	clamp = 36,
	pingPong = 37,
	animationCurve = 38,
}

---@class Color
---@field New fun(r: number,g: number,b: number,a: number): self
---@field Random fun(): nil
---@field FromHex fun(hex: string): Color
---@field Lerp fun(a: Color,b: Color,t: number): Color

---@class Event
---@field Connect fun(func: any): nil
---@field Disconnect fun(func: any): nil

---@class JSON
---@field Parse fun(aJSON: string): JSONNode
---@field GetChildrenAsArray fun(json: JSONNode): table

---@class Vector2
---@field New fun(x: number,y: number): self
---@field Lerp fun(a: Vector2,b: Vector2,t: number): Vector2

---@class Vector3
---@field New fun(x: number,y: number,z: number): self
---@field Angle fun(from: Vector3,to: Vector3): number
---@field ClampMagnitude fun(vector: Vector3,maxLength: number): Vector3
---@field Cross fun(lhs: Vector3,rhs: Vector3): Vector3
---@field Distance fun(a: Vector3,b: Vector3): number
---@field Dot fun(lhs: Vector3,rhs: Vector3): number
---@field Lerp fun(a: Vector3,b: Vector3,t: number): Vector3
---@field Max fun(lhs: Vector3,rhs: Vector3): Vector3
---@field Min fun(lhs: Vector3,rhs: Vector3): Vector3
---@field MoveTowards fun(current: Vector3,target: Vector3,maxDistanceDelta: number): Vector3
---@field Normalize fun(value: Vector3): Vector3
---@field Project fun(vector: Vector3,onNormal: Vector3): Vector3
---@field ProjectOnPlane fun(vector: Vector3,planeNormal: Vector3): Vector3
---@field Reflect fun(inDirection: Vector3,inNormal: Vector3): Vector3
---@field RotateTowards fun(current: Vector3,target: Vector3,maxRadiansDelta: number,maxMagnitudeDelta: number): Vector3
---@field Scale fun(a: Vector3,b: Vector3): Vector3
---@field SignedAngle fun(from: Vector3,to: Vector3,axis: Vector3): number
---@field Slerp fun(a: Vector3,b: Vector3,t: number): Vector3
---@field SlerpUnclamped fun(a: Vector3,b: Vector3,t: number): Vector3
---@field SmoothDamp fun(current: Vector3,target: Vector3,currentVelocity: Vector3,smoothTime: number,maxSpeed: number,deltaTime: number): Vector3

---@class Vector4
---@field New fun(x: number,y: number,z: number,w: number): self

---@class ChatService
---@field BroadcastMessage fun(message: string): nil
---@field UnicastMessage fun(message: string,player: Player): nil

---@class HttpService
---@field Get fun(url: string,callback: any,headers: table): nil
---@field Post fun(url: string,postData: string,callback: any,headers: table): nil
---@field Put fun(url: string,bodyData: string,callback: any,headers: table): nil
---@field Delete fun(url: string,callback: any,headers: table): nil

---@class InputService
---@field MousePosition Vector3
---@field CursorLocked boolean
---@field CursorVisible boolean
---@field KeyDown LuaEvent
---@field KeyUp LuaEvent
---@field GetMouseWorldPosition fun(): nil
---@field GetMouseWorldPoint fun(): nil
---@field ScreenToWorldPoint fun(pos: Vector3): Vector3
---@field ScreenToViewportPoint fun(pos: Vector3): Vector3
---@field WorldToScreenPoint fun(pos: Vector3): Vector3
---@field WorldToViewportPoint fun(pos: Vector3): Vector3
---@field ViewportToWorldPoint fun(pos: Vector3): Vector3
---@field ViewportToScreenPoint fun(pos: Vector3): Vector3
---@field ScreenPointToRay fun(pos: Vector3,ignoreList: table): RayResult
---@field ViewportPointToRay fun(pos: Vector3,ignoreList: table): RayResult

---@class NetMessage
---@field AddString fun(key: string,value: string): nil
---@field AddInt fun(key: string,value: integer): nil
---@field AddBool fun(key: string,value: boolean): nil
---@field AddNumber fun(key: string,value: number): nil
---@field AddVector2 fun(key: string,value: Vector2): nil
---@field AddVector3 fun(key: string,value: Vector3): nil
---@field AddColor fun(key: string,value: Color): nil
---@field AddInstance fun(key: string,value: Instance): nil
---@field GetString fun(key: string): string
---@field GetInt fun(key: string): integer
---@field GetNumber fun(key: string): number
---@field GetBool fun(key: string): boolean
---@field GetVector2 fun(key: string): Vector2
---@field GetVector3 fun(key: string): Vector3
---@field GetColor fun(key: string): Color
---@field GetInstance fun(key: string): Instance
---@field New fun(): self

---@class TweenService
---@field TweenPosition fun(target: DynamicInstance,destination: Vector3,time: number,tweenType: TweenType,callOnComplete: any): integer
---@field TweenRotation fun(target: DynamicInstance,destination: Vector3,time: number,tweenType: TweenType,callOnComplete: any): integer
---@field TweenSize fun(target: DynamicInstance,destination: Vector3,time: number,tweenType: TweenType,callOnComplete: any): integer
---@field TweenNumber fun(start: number,end: number,time: number,callback: any,tweenType: TweenType,callOnComplete: any): integer
---@field TweenColor fun(start: Color,end: Color,time: number,callback: any,tweenType: TweenType,callOnComplete: any): integer
---@field TweenVector3 fun(start: Vector3,end: Vector3,time: number,callback: any,tweenType: TweenType,callOnComplete: any): integer
---@field TweenVector2 fun(start: Vector2,end: Vector2,time: number,callback: any,tweenType: TweenType,callOnComplete: any): integer
---@field Cancel fun(id: integer,callOnComplete: boolean): nil
---@field CancelAll fun(callOnComplete: boolean): nil
---@field Pause fun(id: integer): nil
---@field Resume fun(id: integer): nil
---@field IsPaused fun(id: integer): boolean

---@alias ClassNames
---| Backpack
---| BaseScript
---| BodyPosition
---| BoolValue
---| CameraController
---| Climbable
---| ColorValue
---| Datastore
---| DataStoreService
---| Decal
---| DynamicInstance
---| Environment
---| Game
---| GUI
---| Hidden
---| ImageSky
---| Instance
---| InstanceValue
---| IntValue
---| Lighting
---| LocalScript
---| MeshPart
---| Model
---| NetworkEvent
---| NPC
---| NumberValue
---| Part
---| PlayerDefaults
---| PlayerGUI
---| Player
---| Players
---| PointLight
---| RemoveEvent
---| ScriptInstance
---| ScriptService
---| Seat
---| SkyBase
---| Sound
---| Spotlight
---| StringValue
---| Text3D
---| Tool
---| Truss
---| UIButton
---| UIField
---| UIHorizontalLayout
---| UIHVLayout
---| UIImage
---| UILabel
---| UITextInput
---| UIVerticalLayout
---| UIView
---| ValueBase
---| Vector3Value
