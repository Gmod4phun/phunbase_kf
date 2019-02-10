SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Lever-action rifle"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_lever_action_rifle.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 25
SWEP.Primary.Delay = 0.75
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"lever"}

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

local function shell_hide_think(wep, ent)
	local bone = wep.VM:LookupBone("Bullet_Casing")
	if bone then
		wep.VM:ManipulateBoneScale(bone, Vector(0.01,0.01,0.01))
	end
end

SWEP.VElements = {
	["fakeshell_bullet"] = {bone = "Bullet", model = "models/gmod4phun/kf/shell_rifle.mdl", pos = Vector(0.21,0,0), angle = Angle(0, 90, 0), size = Vector(1.01, 1.01, 1.01), default = true, thinkFunc = shell_hide_think},
	["fakeshell_casing"] = {bone = "Bullet_Casing", model = "models/gmod4phun/kf/shell_rifle.mdl", pos = Vector(0.21,0,0), angle = Angle(0, 90, 0), size = Vector(1.01, 1.01, 1.01), default = true},
}

SWEP.Sequences = {
	idle = "aimidle",
	idle_empty = "aimidle",
	idle_iron = "aimidle",
	idle_iron_empty = "aimidle",
	fire = "fire",
	fire_last = "fire",
	fire_iron = "aimfire",
	fire_iron_last = "aimfire",
	reload = "reload",
	deploy = "select",
	holster = "putdown",
	goto_iron = "aimidle",
	goto_hip = "aimidle",
	reload_shell_start = "reload_start_insert",
	reload_shell_start_empty = "reload_start_insert",
	reload_shell_insert = "reload_insert",
	reload_shell_end = "reload_end",
	reload_shell_end_empty = "reload_end_insert",
	sprint_start = "idle",
	sprint_end = "idle",
}

SWEP.UseIronTransitionAnims = true
SWEP.ForceGotoTransitionAnims = true

local function doSpark(wep)
	wep:_makeParticle("shelleject_spark", "shelleject_top")
end

SWEP.Sounds = {
	fire = {
		{time = 0.4, sound = "PB_KF_LAR_PUMP_FORWARD", callback = doSpark},
		{time = 0.55, sound = "PB_KF_LAR_PUMP_BACK", callback = doSpark}
	},
	aimfire = {
		{time = 0.35, sound = "PB_KF_LAR_PUMP_FORWARD", callback = doSpark},
		{time = 0.5, sound = "PB_KF_LAR_PUMP_BACK", callback = doSpark}
	},
	select = {
		{time = 0.42, sound = "PB_KF_LAR_SELECT"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_LAR_PICKUP"}
	},
	reload_start_insert = {
		{time = 0, sound = "PB_KF_LAR_RELOAD_START"},
		{time = 0.4, sound = "PB_KF_LAR_RELOAD_INSERT"}
	},
	reload_insert = {
		{time = 0.33, sound = "PB_KF_LAR_RELOAD_INSERT"}
	},
	reload_end_insert = {
		{time = 0.22, sound = "PB_KF_LAR_RELOAD_END"}
	},
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5

SWEP.ShotgunReload = true

SWEP.ShotgunReloadActions = {
	InsertOnStart = true,
	InsertOnStartEmpty = true,
	InsertOnEnd = false,
	InsertOnEndEmpty = false,
}

SWEP.ShotgunReloadTimes = {
	Start = 0.87,
	Start_Empty = 0.87,
	Insert = 0.7,
	End = 0.6,
	End_Empty = 0.75,

	InsertAmmoWait = 0.35,
	InsertOnStartAmmoWait = 0.65,
	InsertOnStartEmptyAmmoWait = 0.65,
}

SWEP.ViewModelMovementScale = 0.8

// shell-related stuff
SWEP.ShellVelocity = {X = 30, Y = 10, Z = 30}
SWEP.ShellAngularVelocity = {Pitch_Min = -2000, Pitch_Max = -500, Yaw_Min = 500, Yaw_Max = 1000, Roll_Min = -500, Roll_Max = 500}
SWEP.ShellViewAngleAlign = {Forward = 90, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellDelay = 0.9
SWEP.ShellScale = 1
SWEP.ShellModel = "models/gmod4phun/kf/shell_rifle.mdl"
SWEP.ShellEjectVelocity = 10

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleEffect = {"weapon_muzzle_flash_smoke_small2", "PistolGlow", "muzzle_lee_simple_pistol", "muzzle_fire_pistol", "muzzle_sparks_pistol", "smoke_trail"}

SWEP.FireSound = "PB_KF_LAR_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 26, offsetPos = Vector(0,0,0), spin = false}
