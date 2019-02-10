SWEP.Base = "phun_base_kf"

SWEP.PrintName = "L.A.W."
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_law.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 6//SWEP.Primary.ClipSize
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 200
SWEP.Primary.Delay = 4.75
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"semi"}
SWEP.HUD_NoFiremodes = true

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
	idle_iron = "aimidle",
	idle_iron_empty = "aimidle",
	fire = "fire",
	fire_last = "fire",
	fire_iron = "aimfire",
	fire_iron_last = "aimfire",
	reload = "reload",
	deploy = "select",
	holster = "putdown",
	goto_iron = "raise",
	goto_hip = "idle"
}

SWEP.Sounds = {
	select = {
		{time = 0, sound = "PB_KF_LAW_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_LAW_SELECT"}
	},
	fire = {
		{time = 6/30, sound = "PB_KF_LAW_RELOAD_006"},
		{time = 40/30, sound = "PB_KF_LAW_RELOAD_040"},
		{time = 76/30, sound = "PB_KF_LAW_RELOAD_076"},
		{time = 101/30, sound = "PB_KF_LAW_RELOAD_101"}
	},
	aimfire = {
		{time = 6/30, sound = "PB_KF_LAW_RELOAD_006"},
		{time = 40/30, sound = "PB_KF_LAW_RELOAD_040"},
		{time = 76/30, sound = "PB_KF_LAW_RELOAD_076"},
		{time = 101/30, sound = "PB_KF_LAW_RELOAD_101"}
	}
}

SWEP.DeployTime = 1.35
SWEP.HolsterTime = 1

SWEP.ReloadTimes = {
	Base = 4.75,
	Base_Empty = 4.75
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

SWEP.UseIronTransitionAnims = true
SWEP.ForceGotoTransitionAnims = true
SWEP.IronTransitionAnimsSpeed = 1
SWEP.DisableIronWhileFiring = true
SWEP.IronTransitionFireWaitTime = 0.7
SWEP.OnlyIronFire = true

SWEP.UnIronAfterShot = true
SWEP.UnIronAfterShotTime = 0.1

SWEP.UsesAmmoCountLogic = true
SWEP.DisableReloading = true

SWEP.FireSound = "PB_KF_LAW_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 22.5, offsetPos = Vector(0,0,0), spin = false}

function SWEP:TumbleMissile(ent)
	local d = DamageInfo()
	d:SetDamage( 100 )
	d:SetAttacker( self )
	d:SetInflictor( self )
	d:SetDamageType( DMG_AIRBOAT )
	ent:TakeDamageInfo( d )
end

function SWEP:FireMissile()
	if CLIENT then return end
	local ply = self.Owner
	local dir = ply:EyeAngles():Forward()
	local ent = ents.Create( "rpg_missile" )
	if ( IsValid( ent ) ) then
		ent:SetPos( ply:GetShootPos() + dir )
		ent:SetAngles( ply:EyeAngles() )
		ent:Spawn()
		ent:Activate()
		ent:SetOwner( ply )
		ent.Owner = self:GetOwner()
		ent:SetMoveType(MOVETYPE_FLY)
		ent:SetSaveValue("m_flDamage", self.Primary.Damage)
		ent:SetSaveValue("m_hOwner", self)
		//self:DelayedEvent(2, function() if !IsValid(ent) then return end self:TumbleMissile(ent) end)
	end
end

function SWEP:PrimaryAttackOverride()
	self:FireMissile()
end
