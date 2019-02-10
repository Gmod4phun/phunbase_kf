SWEP.Base = "phun_base_kf"

SWEP.PrintName = "M4"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_m4.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 60/800
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"auto", "semi"}

// Recoil variables
SWEP.Recoil	= 0.72
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.02
SWEP.SpreadVel = 0.65
SWEP.SpreadVel_Iron = 0.45
SWEP.SpreadAdd = 0.18
SWEP.SpreadAdd_Iron	= 0.12

SWEP.BasePos = Vector(4,4,-1.5)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0.000, -0.500, 0.000)
SWEP.IronsightAng = Vector(0.180, 0.000, 0.000)

SWEP.SprintPos = Vector(5.923, -1.219, -0.634)
SWEP.SprintAng = Vector(-15.011, 27.072, -10.329)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(1.6, -11.5, -10.301)
SWEP.NearWallAng = Vector(64.8, 0, 0)

SWEP.NearWallPos = Vector(5.923, -1.219, -0.634)
SWEP.NearWallAng = Vector(-15.011, 27.072, -10.329)

SWEP.PistolSprintSway = true

SWEP.VElements = {
	["lense"] = {model = "models/phunbase/pb_scope_rt_bulged.mdl", bone = "M4", pos = Vector(-0, -2.6, 6.8), angle = Angle(0, 90, 0), size = Vector(1.35, 1.35, 1.35), default = true, bodygroups = {[0] = 2}}
}

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle_iron",
	idle_iron_empty = "idle_iron",
	fire = "fire_iron",
	fire_last = "fire_iron",
	fire_iron = "fire_iron",
	fire_iron_last = "fire_iron",
	reload = "reload",
	deploy = "select",
	holster = "putdown",
	goto_iron = "idle_iron",
	goto_hip = "idle"
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_M4_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_M4_SELECT"}
	},
	reload = {
		{time = 15/30, sound = "PB_KF_M4_MAG_EJECT"},
		{time = 52/30, sound = "PB_KF_M4_MAG_INSERT"},
		{time = 81/30, sound = "PB_KF_M4_BOLTBACK"},
		{time = 87/30, sound = "PB_KF_M4_BOLTFORWARD"}
	}
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 3.6,
	Base_Empty = 3.6
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 350, Yaw_Min = -500, Yaw_Max = 500, Roll_Min = 0, Roll_Max = 5000}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.025
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_rifle.mdl"
SWEP.ShellEjectVelocity = 70

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_M4_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 22, offsetPos = Vector(0,0,0), spin = false}
