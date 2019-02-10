SWEP.Base = "phun_base_kf"

SWEP.PrintName = "M99 AMR"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_m99_amr.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 150
SWEP.Primary.Delay = 3.1
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"bolt"}

// Recoil variables
SWEP.Recoil	= 3.5
SWEP.Spread	= 0.005
SWEP.Spread_Iron = 0
SWEP.SpreadVel = 0.65
SWEP.SpreadVel_Iron = 0.45
SWEP.SpreadAdd = 0.18
SWEP.SpreadAdd_Iron	= 0.12

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

SWEP.VElements = {
	["scope_rt"] = {bone = "M99_Sniper", model = "models/phunbase/pb_scope_rt_bulged.mdl", pos = Vector(-2.5,0.02,7.055), angle = Angle(0, 0, 0), size = Vector(1.5, 1.5, 1.5), active = true, bodygroups = {[0] = 2}},
}

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle",
	idle_iron = "idle_iron",
	idle_iron_empty = "idle_iron",
	fire = "fire",
	fire_last = "fire",
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
		{time = 0, sound = "PB_KF_M99_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_M99_SELECT"}
	},
	fire = {
		{time = 22/30, sound = "PB_KF_M99_BOLTUP"},
		{time = 28/30, sound = "PB_KF_M99_BOLTBACK"},
		{time = 53/30, sound = "PB_KF_M99_BULLET_INSERT"},
		{time = 69/30, sound = "PB_KF_M99_BOLTFORWARD"},
		{time = 75/30, sound = "PB_KF_M99_BOLTDOWN"}
	},
	fire_iron = {
		{time = 22/30, sound = "PB_KF_M99_BOLTUP"},
		{time = 28/30, sound = "PB_KF_M99_BOLTBACK"},
		{time = 53/30, sound = "PB_KF_M99_BULLET_INSERT"},
		{time = 69/30, sound = "PB_KF_M99_BOLTFORWARD"},
		{time = 75/30, sound = "PB_KF_M99_BOLTDOWN"}
	}
}

SWEP.DeployTime = 0.65
SWEP.HolsterTime = 0.65

SWEP.ReloadTimes = {
	Base = 3.1,
	Base_Empty = 3.1
}

SWEP.DisableIronWhileFiring = true
SWEP.UnIronAfterShot = true
SWEP.UnIronAfterShotTime = 0

SWEP.UsesAmmoCountLogic = true
SWEP.DisableReloading = true

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

SWEP.FireSound = "PB_KF_M99_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 26, offsetPos = Vector(0,0,0), spin = false}

SWEP.RTScope_Material = Material("gmod4phun/kf/CBLens_cmb")
SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Align = Angle(0,90,0)
SWEP.RTScope_Reticle = Material("gmod4phun/kf/MilDot")
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

SWEP.MouseSensitivityHip = 1
SWEP.MouseSensitivityIron = 0.25
