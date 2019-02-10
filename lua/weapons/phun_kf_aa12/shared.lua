SWEP.Base = "phun_base_kf"

SWEP.PrintName = "AA-12"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_shotgun_aa12.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.2
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 8
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"auto", "semi"}

// Recoil variables
SWEP.Recoil	= 1.45
SWEP.Spread	= 0.05
SWEP.Spread_Iron = 0.05
SWEP.SpreadVel = 1.2
SWEP.SpreadVel_Iron = 1.2
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.3

SWEP.BasePos = Vector(4,4,-1.5)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0, -0.5, 0)
SWEP.IronsightAng = Vector(0, 0, 0)

SWEP.SprintPos = Vector(5.923, -1.219, -0.634)
SWEP.SprintAng = Vector(-15.011, 27.072, -10.329)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(1.6, -11.5, -10.301)
SWEP.NearWallAng = Vector(64.8, 0, 0)

SWEP.NearWallPos = Vector(5.923, -1.219, -0.634)
SWEP.NearWallAng = Vector(-15.011, 27.072, -10.329)

SWEP.PistolSprintSway = true

local function shell_hide_think(wep, ent)
	local bone = wep.VM:LookupBone("Shell")
	if bone then
		wep.VM:ManipulateBoneScale(bone, Vector(0.01,0.01,0.01))
	end
end

SWEP.VElements = {
	["fakeshell"] = {model = "models/phunbase/shells/12g_bucknball_closed.mdl", bone = "Shell", pos = Vector(0.25, 0, 0), angle = Angle(-1.4, 0, 0), size = Vector(0.75, 0.75, 0.75), active = true, thinkFunc = shell_hide_think }
}

SWEP.Sequences = {
	idle = "idle_iron",
	idle_empty = "idle_iron",
	idle_iron = "idle_iron",
	idle_iron_empty = "idle_iron",
	fire = "fire",
	fire_last = "fire",
	fire_iron = "fire_iron",
	fire_iron_last = "fire_iron",
	reload = "reload_wet",
	reload_empty = "reload",
	deploy = "select",
	holster = "putdown",
	goto_iron = "idle_iron",
	goto_hip = "idle"
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_AA12_SELECT"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_AA12_PICKUP"}
	},
	reload = {
		{time = 0/30, sound = "PB_KF_AA12_RELOAD_000"},
		{time = 11/30, sound = "PB_KF_AA12_RELOAD_011"},
		{time = 21/30, sound = "PB_KF_AA12_RELOAD_021"},
		{time = 43/30, sound = "PB_KF_AA12_RELOAD_043"},
		{time = 70/30, sound = "PB_KF_AA12_RELOAD_070"}
	},
	reload_wet = {
		//{time = 0/30, sound = "PB_KF_AA12_RELOAD_000"},
		//{time = 11/30, sound = "PB_KF_AA12_RELOAD_011"},
		//{time = 21/30, sound = "PB_KF_AA12_RELOAD_021"},
		{time = 18/30, sound = "PB_KF_AA12_RELOAD_043"},
		{time = 45/30, sound = "PB_KF_AA12_RELOAD_070"}
	}
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 2.35,
	Base_Empty = 3.1
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 180, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.025
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_12gauge.mdl"
SWEP.ShellEjectVelocity = 70

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_AA12_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 18, offsetPos = Vector(0,0,0), spin = false}
