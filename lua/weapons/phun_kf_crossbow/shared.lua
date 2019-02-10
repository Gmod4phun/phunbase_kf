if 1 == 1 then return end // not yet finished

SWEP.Base = "phun_base_kf"

SWEP.PrintName = "Crossbow"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.063
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

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

SWEP.VElements = {
	["scope_rt"] = {bone = "Crossbow", model = "models/phunbase/pb_scope_rt_bulged.mdl", pos = Vector(-5.35, 0, 7.78), angle = Angle(0, 0, 0), size = Vector(1.707, 1.707, 1.707), active = true},
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
		{time = 0, sound = "PB_KF_MP7_PICKUP"}
	},
	putdown = {
		{time = 0, sound = "PB_KF_MP7_SELECT"}
	},
	reload = {
		{time = 0/30, sound = "PB_KF_MP7_RELOAD_000"},
		{time = 21/30, sound = "PB_KF_MP7_RELOAD_021"},
		{time = 47/30, sound = "PB_KF_MP7_RELOAD_047"},
		{time = 74/30, sound = "PB_KF_MP7_RELOAD_074"}
	}
}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 3.1

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

SWEP.FireSound = "PB_KF_MP7_FIRE"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 22, offsetPos = Vector(0,0,0), spin = false}

SWEP.RTScope_Enabled = true
SWEP.RTScope_Zoom = 7.25
SWEP.RTScope_Align = Angle(0,0,0)
SWEP.RTScope_Reticle = Material("phunbase/reticles/scope_crosshair_simple")
SWEP.RTScope_DrawIris = true
SWEP.RTScope_DrawParallax = true

SWEP.MouseSensitivityHip = 1
SWEP.MouseSensitivityIron = 0.25

function SWEP:FireArrow()
	if CLIENT then return end
	-- local ply = self.Owner
	-- local dir = ply:EyeAngles():Forward()
	-- local ent = ents.Create( "rpg_missile" )
	-- if ( IsValid( ent ) ) then
		-- ent:SetPos( ply:GetShootPos() + dir )
		-- ent:SetAngles( ply:EyeAngles() )
		-- ent:Spawn()
		-- ent:Activate()
		-- ent:SetOwner( ply )
		-- ent.Owner = self:GetOwner()
		-- ent:SetMoveType(MOVETYPE_FLY)
		-- ent:SetSaveValue("m_flDamage", self.Primary.Damage)
		-- ent:SetSaveValue("m_hOwner", self)
		-- //self:DelayedEvent(2, function() if !IsValid(ent) then return end self:TumbleMissile(ent) end)
	-- end
	
	local ply = self.Owner
	local arrow = ents.Create("huntingbow_arrow")
	arrow:SetOwner(ply)
	arrow:SetPos(ply:EyePos())
	arrow:SetAngles(ply:EyeAngles())
	arrow:Spawn()
	arrow:Activate()
	
	arrow:SetMoveType(MOVETYPE_FLY)
	arrow:SetVelocity(ply:EyeAngles():Forward() * 2500 * 1)
	arrow.Weapon = self
end

-- function SWEP:PrimaryAttackOverride()
	-- self:FireArrow()
-- end
