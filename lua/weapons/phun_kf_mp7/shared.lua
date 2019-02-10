SWEP.Base = "phun_base_kf"

SWEP.PrintName = "MP7M"
SWEP.Category = "PHUNBASE | Killing Floor"
SWEP.Slot = 1
SWEP.SlotPos = 1

include("sounds.lua")

SWEP.ViewModelFOV = 60
SWEP.AimViewModelFOV = 60
SWEP.ViewModel = "models/gmod4phun/kf/v_medic_mp7.mdl"
SWEP.WorldModel = "models/weapons/w_smg1.mdl"

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

// weapon specific variables
SWEP.Primary.Ammo = "phunbase_9x19mm"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = SWEP.Primary.ClipSize
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 60/950
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 1
SWEP.Primary.Tracer = 0

SWEP.FireModes = {"auto", "semi"}

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

SWEP.ReloadTimes = {
	Base = 3.1,
	Base_Empty = 3.1
}

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

SWEP.FireSound = "PB_KF_MP7_FIRE"
SWEP.FireSoundLoop = "PB_KF_MP7_FIRELOOP"

SWEP.NormalFlashlight = false
SWEP.CustomFlashlight = false

SWEP.PHUNBASEWEP_KF = true

SWEP.HoldType = "smg"
SWEP.SprintHoldType = "passive"
SWEP.CrouchHoldType = "smg"
SWEP.ReloadHoldType = "smg"

SWEP.ScriptedEntityType = "phunbase_weapon_kf"
SWEP.KF_IconParams = {dist = 12.5, offsetPos = Vector(0,0,0), spin = false}

/* // WIP LOOPING FIRESOUNDS
function SWEP:IsAuto()
	return self.Primary.Automatic
end

function SWEP:StartFireSound()
	if self:IsAuto() then
		-- self:DelayedEvent(self.Primary.Delay, function()
			if !self.isFiringLoop then
				self.isFiringLoop = true
				-- self:EmitSound(self.FireSound)
				self:EmitSound(self.FireSoundLoop)
				-- self:StopSound(self.FireSound)
			end
		-- end)
	else
		self:EmitSound(self.FireSound)
	end
end

function SWEP:StopFireSound()
	if self:IsAuto() then
		if self.isFiringLoop then
			self.isFiringLoop = false
			self:StopSound(self.FireSoundLoop)
			self:EmitSound(self.FireSound)
		end
	end
end

function SWEP:AdditionalThink()
	if self:IsAuto() and !self.Owner:KeyDown(IN_ATTACK) then
		self:StopFireSound()
	end
end

function SWEP:PerformFireAction()
	local ply = self.Owner

	self:StartFireSound()
	
	if !self:IsAuto() then
		self:StopFireSound()
	end

	if self.PrimaryAttackOverride then
		self:PrimaryAttackOverride()
	else
		self:_FireBullets()
		self:StopViewModelParticles()
	end

	self:PlayMuzzleFlashEffect()
	self:MakeRecoil()

	if CLIENT then
		self:simulateRecoil()
	end

	if game.SinglePlayer() and SERVER then
		if self.Owner:IsPlayer() then
			SendUserMessage("PHUNBASE_Recoil", ply)
			SendUserMessage("PHUNBASE_PrimaryAttackOverride_CL", ply)
		end
	end

	ply:SetAnimation(PLAYER_ATTACK1)
	
	self:Cheap_WM_ShootEffects()
end

function SWEP:_primaryAttack(isSecondary) // I hate to do this but whatever, I dont want to copy shitton of code just for sequences
	if self:GetIsSprinting() or self:GetIsNearWall() or self:IsBusy() or self:IsFlashlightBusy() or (self.OnlyIronFire and !self:GetIron()) or self.IronTransitionWaiting then return end

	if self:GetIsCustomizing() or self:IsGlobalDelayActive() then return end

	if self.Owner:KeyDown(IN_USE) and self.UsesGrenadeLauncher then
		if self:GetWeaponMode() == PB_WEAPONMODE_NORMAL then
			self:EnterGrenadeLauncherMode()
			return
		elseif self:GetWeaponMode() == PB_WEAPONMODE_GL_ACTIVE then
			self:ExitGrenadeLauncherMode()
			return
		end
	end

	if self:GetWeaponMode() == PB_WEAPONMODE_GL_ACTIVE then
		self:GrenadeLauncherModeFire()
		return
	end

	if self:GetShouldBeCocking() or self:IsSafe() then
		self:SetNextPrimaryFire(CurTime() + 0.25)
		self:EmitSound(self.DryFireSound)
		self:DryFireAnimLogic()
		return
	end

	if !self:HasEnoughAmmo() then
		self:SetNextPrimaryFire(CurTime() + 0.25)
		self:EmitSound(self.EmptySoundPrimary)
		self:DryFireAnimLogic()
		return
	end

	if self.BurstAmount and self.BurstAmount > 0 then
		if self.BurstShotsFired >= self.BurstAmount then
			return
		end

		self.BurstShotsFired = self.BurstShotsFired + 1
	end

	self:InitFireAction()
	
	if self:Clip1() == 0 then // fire delay after last shot, mostly to prevent snapping dryfire anims
		self:SetNextPrimaryFire(CurTime() + self.LastShotFireDelay)
		self:StopFireSound()
	end
end
*/
