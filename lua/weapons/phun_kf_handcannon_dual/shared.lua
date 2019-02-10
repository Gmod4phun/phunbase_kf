SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Handcannon Dual"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_handcannon_dual.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_50ae"
SWEP.Primary.ClipSize = 16
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 23
SWEP.Primary.Delay = 0.08
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi"}

// Recoil variables
SWEP.Recoil	= 1.65
SWEP.Spread	= 0.05
SWEP.Spread_Iron = 0.045
SWEP.SpreadVel = 0.75
SWEP.SpreadVel_Iron = 0.7
SWEP.SpreadAdd = 0.3
SWEP.SpreadAdd_Iron	= 0.2

SWEP.BasePos = Vector(0,3,-1)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0,-2,0)
SWEP.IronsightAng = Vector(0,0,0)

SWEP.SprintPos = Vector(0, -11.5, -10.301)
SWEP.SprintAng = Vector(64.8, 0, 0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0, -11.5, -10.301)
SWEP.NearWallAng = Vector(64.8, 0, 0)

SWEP.PistolSprintSway = true

SWEP.Sequences = {
	idle = "idle",
	idle_iron = "idle_iron",
	fire = "fire",
	fire_iron = "fire_iron",
	fire_left = "fireleft",
	fire_left_iron = "fireleft_iron",
	fire_right = "fireright",
	fire_right_iron = "fireright_iron",
	reload = "reload",
	deploy = "select",
	holster = "putdown",
	lighton = "lighton",
	lighton_iron = "lighton_iron",
	goto_iron = "goto_iron",
	goto_hip = "goto_hip"
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_9MM_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_9MM_SELECT"}
	},
	lighton = {
		{time = 10/30, sound = "PB_KF_9MM_FLASHLIGHT"}
	},
	lighton_iron = {
		{time = 10/30, sound = "PB_KF_9MM_FLASHLIGHT"}
	},
	reload = {
		{time = 10/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_011"},
		{time = 12/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_011"},
		{time = 43/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_043"},
		{time = 80/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_043"},
		{time = 90/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_055"},
		{time = 95/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_055"}
	}
}

SWEP.DeployTime = 0.45
SWEP.HolsterTime = 0.4

SWEP.ReloadTimes = {
	Base = 3.75,
	Base_Empty = 3.75
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.035
SWEP.ShellScale = 0.8
SWEP.ShellModel = "models/gmod4phun/kf/shell_50ae.mdl"
SWEP.ShellEjectVelocity = 70

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.IsDual = true
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.ShellAttachmentName_L = "shelleject_left"
SWEP.ShellAttachmentName_R = "shelleject_right"
SWEP.UseIronTransitionAnims = true
SWEP.IronTransitionAnimsSpeed = 2

SWEP.FireSound = "PB_KF_HANDCANNON_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "duel"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "duel"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 10, offsetPos = Vector(0,0,0), spin = false}