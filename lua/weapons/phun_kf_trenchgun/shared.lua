SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Trenchgun"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_trenchgun.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 8
SWEP.Primary.Delay = 1.1
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 6
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"pump"}

// Recoil variables
SWEP.Recoil	= 1.25
SWEP.Spread	= 0.035
SWEP.Spread_Iron = 0.03
SWEP.SpreadVel = 0.5
SWEP.SpreadVel_Iron = 0.45
SWEP.SpreadAdd = 0.25
SWEP.SpreadAdd_Iron	= 0.2

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
	goto_hip = "idle",
	reload_shell_start = "reload_start",
	reload_shell_start_empty = "reload_start",
	reload_shell_insert = "reload_insert",
	reload_shell_end = "reload_end",
	reload_shell_end_empty = "reload_end_insert",
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_COMBATSHOTGUN_SELECT"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"}
	},
	reload_start = {
		{time = 0, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"}
	},
	reload_insert = {
		{time = 0.1, sound = "PB_KF_TRENCHGUN_RELOAD_GATE"},
		{time = 0.25, sound = "PB_KF_TRENCHGUN_RELOAD_INSERT"}
	},
	reload_end = {
		{time = 0, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"},
	},
	reload_end_insert = {
		{time = 0.1, sound = "PB_KF_TRENCHGUN_RELOAD_GATE"},
		{time = 0.25, sound = "PB_KF_TRENCHGUN_RELOAD_INSERT"},
		{time = 0.75, sound = "PB_KF_TRENCHGUN_PUMP_1"},
		{time = 1.05, sound = "PB_KF_TRENCHGUN_PUMP_2"},
		{time = 1.75, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"}
	},
	fire = {
		{time = 0.4, sound = "PB_KF_TRENCHGUN_PUMP_1"},
		{time = 0.75, sound = "PB_KF_TRENCHGUN_PUMP_2"}
	},
	fire_iron = {
		{time = 0.4, sound = "PB_KF_TRENCHGUN_PUMP_1"},
		{time = 0.75, sound = "PB_KF_TRENCHGUN_PUMP_2"}
	},
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 3.1

-- SWEP.ShotgunReload = true
-- SWEP.ShotgunReload_InsertOnStart = false
-- SWEP.ShotgunReload_InsertOnEnd = false
-- SWEP.ShotgunReload_InsertOnEndEmpty = true

-- SWEP.ShotgunReloadTime_Start = 0.2
-- SWEP.ShotgunReloadTime_Start_Empty = 0.2
-- SWEP.ShotgunReloadTime_Start_EmptyOneAndOnly = 0.25
-- SWEP.ShotgunReloadTime_Insert = 0.6
-- SWEP.ShotgunReloadTime_End = 0.4
-- SWEP.ShotgunReloadTime_End_Empty = 1.5

-- SWEP.ShotgunReloadTime_InsertAmmoWait = 0.25
-- SWEP.ShotgunReloadTime_InsertOnStartAmmoWait = 0.55
-- SWEP.ShotgunReloadTime_InsertOnEndAmmoWait = 0.4

SWEP.ShotgunReload = true

SWEP.ShotgunReloadActions = {
	InsertOnStart = false,
	InsertOnStartEmpty = false,
	InsertOnEnd = false,
	InsertOnEndEmpty = true,
}

SWEP.ShotgunReloadTimes = {
	Start = 0.15,
	Start_Empty = 0.15,
	Insert = 0.6,
	End = 0.4,
	End_Empty = 1.35,

	InsertAmmoWait = 0.3,
	InsertOnEndEmptyAmmoWait = 0.3,
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

SWEP.FireSound = "PB_KF_TRENCHGUN_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 25, offsetPos = Vector(0,0,0), spin = false}
