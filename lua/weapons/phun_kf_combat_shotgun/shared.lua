SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Combat Shotgun"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_shotgun_combat.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 25
SWEP.Primary.Delay = 0.15
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 8
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi"}

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
		{time = 0.33, sound = "PB_KF_COMBATSHOTGUN_RELOAD_INSERT"}
	},
	reload_end = {
		{time = 0, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"},
	},
	reload_end_insert = {
		{time = 0.33, sound = "PB_KF_COMBATSHOTGUN_RELOAD_INSERT"},
		{time = 0.9, sound = "PB_KF_COMBATSHOTGUN_RELOAD_BOLT"},
		{time = 1.12, sound = "PB_KF_COMBATSHOTGUN_RELOAD_CLOTH"}
	},
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5

SWEP.ShotgunReload = true

SWEP.ShotgunReloadActions = {
	InsertOnStart = false,
	InsertOnStartEmpty = false,
	InsertOnEnd = false,
	InsertOnEndEmpty = true,
}

SWEP.ShotgunReloadTimes = {
	Start = 0.25,
	Start_Empty = 0.25,
	Insert = 0.7,
	End = 0.4,
	End_Empty = 1.55,

	InsertAmmoWait = 0.35,
	InsertOnEndEmptyAmmoWait = 0.35,
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 180, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.01
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_12gauge.mdl"
SWEP.ShellEjectVelocity = 10

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_COMBATSHOTGUN_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 24, offsetPos = Vector(0,0,0), spin = false}