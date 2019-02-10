SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Handcannon"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_handcannon.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_50ae"
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 23
SWEP.Primary.Delay = 0.1
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

SWEP.BasePos = Vector(4,0,-1.5)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0, -0.5, 0)
SWEP.IronsightAng = Vector(0, 0, 0)

SWEP.SprintPos = Vector(4.8, -18.6, -11.5)
SWEP.SprintAng = Vector(70, 0, 0)

SWEP.HolsterPos = Vector(0,0,20)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(4.8, -18.6, -11.5)
SWEP.NearWallAng = Vector(70, 0, 0)

SWEP.PistolSprintSway = true

SWEP.Sequences = {
	idle = "idle",
	idle_empty = "idle_empty",
	idle_iron = "idle_iron",
	idle_iron_empty = "idle_iron_empty",
	fire = "fire",
	fire_last = "fire_last",
	fire_iron = "iron_fire",
	fire_iron_last = "iron_fire_last",
	fire_left = "fire_left",
	fire_left_iron = "fire_left_iron",
	fire_right = "fire_right",
	fire_right_iron = "fire_right_iron",
	reload = "reload",
	deploy = "select",
	holster = "putdown",
	lighton = "lighton",
	lighton_iron = "lighton",
	goto_iron = "idle_iron",
	goto_hip = "idle"
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_HANDCANNON_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_HANDCANNON_SELECT"}
	},
	reload = {
		{time = 0/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_000"},
		{time = 11/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_011"},
		{time = 43/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_043"},
		{time = 55/30, sound = "PB_KF_HANDCANNON_SINGLE_RELOAD_055"}
	}
}

SWEP.DeployTime = 0.4
SWEP.HolsterTime = 0.5

SWEP.ReloadTimes = {
	Base = 2.4,
	Base_Empty = 2.4
}

SWEP.IdleAfterReload = true
SWEP.IdleAfterReloadTime = 2.1

SWEP.ForceGotoTransitionAnims = false

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 90, Y = 10, Z = 10}
SWEP.ShellAngularVelocity = {Pitch_Min = 1500, Pitch_Max = 1800, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 1000, Roll_Max = 1200}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.03
SWEP.ShellScale = 0.8
SWEP.ShellModel = "models/gmod4phun/kf/shell_50ae.mdl"
SWEP.ShellEjectVelocity = 70

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_HANDCANNON_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

//SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = -1, pitch = -2} -- modifier for intensity of the recoil on varying axes

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "revolver"
SWEP.SprintHoldType = "normal"
SWEP.CrouchHoldType = "pistol"
SWEP.ReloadHoldType = "pistol"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 8, offsetPos = Vector(0,0,0), spin = false}
