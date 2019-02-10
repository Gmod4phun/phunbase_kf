SWEP.Base = "phun_base_kf"

SWEP.PrintName = ".44 Magnum Dual"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_revolver_dual.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.063
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"double"}

// Recoil variables
SWEP.Recoil	= 1.3
SWEP.Spread	= 0.02
SWEP.Spread_Iron = 0.02
SWEP.SpreadVel = 0.65
SWEP.SpreadVel_Iron = 0.45
SWEP.SpreadAdd = 0.18
SWEP.SpreadAdd_Iron	= 0.12

SWEP.BasePos = Vector(0,0,0)
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
		{time = 0, sound = "PB_KF_REVOLVER_SELECT"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_REVOLVER_PICKUP"}
	},
	reload = {
		{time = 10/30, sound = "PB_KF_REVOLVER_RELOAD_OPEN"},
		{time = 21/30, sound = "PB_KF_REVOLVER_RELOAD_EJECT"},
		{time = 67/30, sound = "PB_KF_REVOLVER_RELOAD_INSERT"},
		{time = 88/30, sound = "PB_KF_REVOLVER_RELOAD_CLOSE"},
		
		{time = 115/30, sound = "PB_KF_REVOLVER_RELOAD_OPEN"},
		{time = 132/30, sound = "PB_KF_REVOLVER_RELOAD_EJECT"},
		{time = 153/30, sound = "PB_KF_REVOLVER_RELOAD_INSERT"},
		{time = 175/30, sound = "PB_KF_REVOLVER_RELOAD_CLOSE"}
	}
}

SWEP.DeployTime = 0.66
SWEP.HolsterTime = 0.6

SWEP.ReloadTimes = {
	Base = 6.65,
	Base_Empty = 6.65
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 30, Y = 10, Z = 30}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.025
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_9mm.mdl"
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

SWEP.FireSound = "PB_KF_REVOLVER_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "duel"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "duel"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 10, offsetPos = Vector(0,0,0), spin = false}
