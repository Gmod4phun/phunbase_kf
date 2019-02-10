SWEP.Base = "phun_base_kf"

SWEP.PrintName = "9mm Pistol"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_9mm_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.1
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi"}

// Recoil variables
SWEP.Recoil	= 1.25
SWEP.Spread	= 0.05
SWEP.Spread_Iron = 0.045
SWEP.SpreadVel = 0.75
SWEP.SpreadVel_Iron = 0.7
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(4,4,-1.5)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(-0.086, -0.5, 0)
SWEP.IronsightAng = Vector(0.185, 0.259, 0)

SWEP.SprintPos = Vector(1.6, -11.5, -10.301)
SWEP.SprintAng = Vector(64.8, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(1.6, -11.5, -10.301)
SWEP.NearWallAng = Vector(64.8, 0, 0)

SWEP.PistolSprintSway = true

SWEP.Sequences = {
	idle = "idle_iron",
	idle_empty = "idle_iron_empty",
	idle_iron = "idle_iron",
	idle_iron_empty = "idle_iron_empty",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron = "fire_iron",
	fire_iron_last = "fire_iron_last",
	fire_left = "fire_left",
	fire_left_iron = "fire_left_iron",
	fire_right = "fire_right",
	fire_right_iron = "fire_right_iron",
	reload = "reload_wet",
	reload_empty = "reload",
	deploy = "select",
	holster = "putdown",
	lighton = "lighton",
	lighton_iron = "lighton",
	goto_iron = "idle_iron",
	goto_hip = "idle",
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_9MM_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_9MM_SELECT"}
	},
	lighton = {
		{time = 5/30, sound = "PB_KF_9MM_FLASHLIGHT"}
	},
	reload = {
		{time = 0/30, sound = "PB_KF_9MM_SINGLE_RELOAD_000"},
		{time = 26/30, sound = "PB_KF_9MM_SINGLE_RELOAD_026"},
		{time = 36/30, sound = "PB_KF_9MM_SINGLE_RELOAD_036"},
		{time = 49/30, sound = "PB_KF_9MM_SINGLE_RELOAD_049"}
	},
	reload_wet = {
		{time = 0/30, sound = "PB_KF_9MM_SINGLE_RELOAD_000"},
		{time = 26/30, sound = "PB_KF_9MM_SINGLE_RELOAD_026"},
		{time = 36/30, sound = "PB_KF_9MM_SINGLE_RELOAD_036"}
	}
}

SWEP.DeployTime = 0.3
SWEP.HolsterTime = 0.3

SWEP.ReloadTimes = {
	Base = 1.65,
	Base_Empty = 2
}

SWEP.IdleAfterReload = true
SWEP.IdleAfterReloadTime = 1.45

SWEP.ForceGotoTransitionAnims = false

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.025
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_9mm.mdl"
SWEP.ShellEjectVelocity = 70

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_9MM_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = true

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "revolver"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "pistol"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 7, offsetPos = Vector(0,0,0), spin = false}
