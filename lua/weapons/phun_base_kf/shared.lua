AddCSLuaFile()

SWEP.PrintName = "PHUNBASE Killing Floor"
SWEP.Category = "PHUNBASE"
SWEP.Slot = 1
SWEP.SlotPos = 1
SWEP.IconLetter = "1"
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.SwayScale = 1
SWEP.BobScale = 1

SWEP.Base = "phun_base"
SWEP.PHUNBASEWEP = true
SWEP.PHUNBASEWEP_KF = true

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 70
SWEP.AimViewModelFOV = 70
SWEP.ViewModel = "models/weapons/c_pistol.mdl"
SWEP.WorldModel = "models/weapons/w_pistol.mdl"
SWEP.HoldType = "pistol"

SWEP.SprintHoldType = "passive"
SWEP.SafeHoldType = "passive"

util.PrecacheModel( SWEP.ViewModel )
util.PrecacheModel( SWEP.WorldModel )

SWEP.Weight = -1
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Ammo = "pistol"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 0.1
SWEP.Primary.Damage = 20
SWEP.Primary.Force = 10
SWEP.Primary.Bullets = 0
SWEP.Primary.Tracer = 0
SWEP.Primary.Spread = 0.02
SWEP.Primary.Cone = 0.02

SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 0.1

SWEP.PB_VMPOS = Vector(0,0,0) // ViewModel position
SWEP.PB_VMANG = Angle(0,0,0) // ViewModel angles

SWEP.BasePos = Vector(0,0,0)
SWEP.BaseAng = Vector(0,0,0)

SWEP.IronsightPos = Vector(0,0,0)
SWEP.IronsightAng = Vector(0,0,0)

SWEP.SprintPos = Vector(0,0,0)
SWEP.SprintAng = Vector(0,0,0)

SWEP.HolsterPos = Vector(0,0,0)
SWEP.HolsterAng = Vector(0,0,0)

SWEP.NearWallPos = Vector(0,0,0)
SWEP.NearWallAng = Vector(0,0,0)

SWEP.InactivePos = Vector(4, 0, 0)
SWEP.InactiveAng = Vector(-45, 45, 0)

SWEP.Sequences = {}
SWEP.Sounds = {}

SWEP.DeployTime = 0.5
SWEP.HolsterTime = 0.5
SWEP.ReloadTime = 0.5

SWEP.UseHands = true

SWEP.IsDual = false
SWEP.NormalFlashlight = true
SWEP.CustomFlashlight = false

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.MuzzleAttachmentName_L = "muzzle_left"
SWEP.MuzzleAttachmentName_R = "muzzle_right"
SWEP.MuzzleEffect = {"smoke_trail"}

SWEP.ShellVelocity = {X = 0, Y = 0, Z = 0}
SWEP.ShellAngularVelocity = {Pitch_Min = 0, Pitch_Max = 0, Yaw_Min = 0, Yaw_Max = 0, Roll_Min = 0, Roll_Max = 0}
SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 0}
SWEP.ShellAttachmentName = "shelleject"
SWEP.ShellAttachmentName_L = "shelleject_left"
SWEP.ShellAttachmentName_R = "shelleject_right"
SWEP.ShellDelay = 0.03
SWEP.ShellScale = 0.5
SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellEjectVelocity = 75

SWEP.FireSound = {} -- can be a string, or a table of sounds

SWEP.DisableIronsights = false
SWEP.DisableReloadBlur = false
SWEP.ReloadAfterShot = false
SWEP.ReloadAfterShotTime = 0.5
SWEP.IdleAfterReload = false

SWEP.UseIronTransitionAnims = true
SWEP.ForceGotoTransitionAnims = true

SWEP.EmptySoundPrimary = "PB_WeaponEmpty_Primary"
SWEP.EmptySoundSecondary = "PB_WeaponEmpty_Secondary"

SWEP.UsesEmptyReloadTimes = true

SWEP.InstantFlashlight = false

SWEP.FireMoveMod = 1
SWEP.FireMoveMod_Iron = 1

// KF HANDS

SWEP.KF_Arms_Model = "models/gmod4phun/kf/arms.mdl" 

function SWEP:_CreateHands()
	if !CLIENT then return end
	local gmod_hands = LocalPlayer():GetHands()
	
	if GetConVar("pb_kf_arms_use_gmod_hands"):GetInt() == 1 then // gmod hands
		if !self.KF_Linker then
			self.KF_Linker = self:CreateClientModel( "models/gmod4phun/kf/c_kf_to_gmod_hands.mdl" )
		end
		self.KF_Linker:SetNoDraw(true)
		self.KF_Linker:SetupBones()
		self.KF_Linker:SetParent(self.VM)
		self.KF_Linker:AddEffects(EF_BONEMERGE)
		self.KF_Linker:AddEffects(EF_BONEMERGE_FASTCULL)
		
		if !self.Hands then
			self.Hands = self:CreateClientModel( gmod_hands:GetModel() )
		end
		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.KF_Linker)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
		self.Hands.GetPlayerColor = self._GetPlayerColor // player color proxy
		self:_CopyBodyGroups(LocalPlayer():GetHands(), self.Hands)
	else
		if !self.Hands then
			self.Hands = self:CreateClientModel( self.KF_Arms_Model )
		end
		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.VM)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
	end
end

function SWEP:_UpdateHands()
	if SERVER then
		SendUserMessage("PHUNBASE_UMSG_UPDATEHANDS", self.Owner)
	else
		local gmod_hands = LocalPlayer():GetHands()
		
		if !self.KF_Linker or !self.Hands then
			self:_CreateHands()
		end
		
		if GetConVar("pb_kf_arms_use_gmod_hands"):GetInt() == 1 then
			self.Hands:SetModel( gmod_hands:GetModel() )
			self:_CopyBodyGroups(gmod_hands, self.Hands)
		else
			self.Hands:SetModel( self.KF_Arms_Model )
		end
	end
end

function SWEP:_drawHands()
	if GetConVar("pb_kf_arms_use_gmod_hands"):GetInt() == 1 then
		if self.KF_Linker then
			self.KF_Linker:DrawModel()
		end
		if self.Hands then
			self.Hands.GetPlayerColor = self._GetPlayerColor
			self.Hands:DrawModel()
		end
	else
		if self.Hands then
			self.Hands:DrawModel()
		end
	end
end
