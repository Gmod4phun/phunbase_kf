/*
if SERVER then
	concommand.Add("magnu_action", function( ply, cmd, args )
		if !ply:Alive() then return end
		if ply.NextMagnuTime == nil or ply.NextMagnuTime < CurTime() then
			ply.NextMagnuTime = CurTime() + 0.5
			local lastWep = ply:GetActiveWeapon()
			lastWep.model = lastWep:GetModel()
			local M = ents.Create("weapon_striderbuster")
			M:SetPos(ply:EyePos()+ply:EyeAngles():Forward()*32)
			M:SetAngles(ply:EyeAngles())
			M:Activate()
			M:Spawn()
			M:PhysWake()
			ply:SetActiveWeapon(ply:GetWeapon("weapon_physcannon"))
			timer.Simple(0.02, function() if IsValid(ply) then ply:ConCommand("+attack2") end end)
			timer.Simple(0.04, function() if IsValid(ply) then ply:ConCommand("-attack2") end end)
			timer.Simple(0.06, function() if IsValid(ply) then ply:ConCommand("+attack") end end)
			timer.Simple(0.08, function() if IsValid(ply) then ply:ConCommand("-attack") end end)
			timer.Simple(0.1, function() if IsValid(ply) then ply:SelectWeapon(lastWep:GetClass()) ply:SetActiveWeapon(lastWep) end end)
		end
	end)
end
*/

if !CLIENT then return end

local l_glove = CreateClientConVar( "pb_kf_arms_glove_l", 0, true, false )
local r_glove = CreateClientConVar( "pb_kf_arms_glove_r", 0, true, false )
local l_hand = CreateClientConVar( "pb_kf_arms_hand_l", 0, true, false )
local r_hand = CreateClientConVar( "pb_kf_arms_hand_r", 0, true, false )
local l_sleeve = CreateClientConVar( "pb_kf_arms_sleeve_l", 0, true, false )
local r_sleeve = CreateClientConVar( "pb_kf_arms_sleeve_r", 0, true, false )
CreateClientConVar( "pb_kf_arms_use_gmod_hands", 0, true, false )

local mat_l_glove = Material("gmod4phun/kf/kf_arms_glove_l")
local mat_r_glove = Material("gmod4phun/kf/kf_arms_glove_r")
local mat_l_hand = Material("gmod4phun/kf/kf_arms_hand_l")
local mat_r_hand = Material("gmod4phun/kf/kf_arms_hand_r")
local mat_l_sleeve = Material("gmod4phun/kf/kf_arms_sleeve_l")
local mat_r_sleeve = Material("gmod4phun/kf/kf_arms_sleeve_r")

local handtex = "gmod4phun/kf_hands/hands"

local function KF_ARMS_GLOVE_L_Callback(cvar, oldVal, newVal)
	mat_l_glove:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_glove_l", KF_ARMS_GLOVE_L_Callback)

local function KF_ARMS_GLOVE_R_Callback(cvar, oldVal, newVal)
	mat_r_glove:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_glove_r", KF_ARMS_GLOVE_R_Callback)

local function KF_ARMS_HAND_L_Callback(cvar, oldVal, newVal)
	mat_l_hand:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_hand_l", KF_ARMS_HAND_L_Callback)

local function KF_ARMS_HAND_R_Callback(cvar, oldVal, newVal)
	mat_r_hand:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_hand_r", KF_ARMS_HAND_R_Callback)

local function KF_ARMS_SLEEVE_L_Callback(cvar, oldVal, newVal)
	mat_l_sleeve:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_sleeve_l", KF_ARMS_SLEEVE_L_Callback)

local function KF_ARMS_SLEEVE_R_Callback(cvar, oldVal, newVal)
	mat_r_sleeve:SetTexture("$basetexture", handtex..newVal)
end
cvars.AddChangeCallback("pb_kf_arms_sleeve_r", KF_ARMS_SLEEVE_R_Callback)

local function KF_ARMS_APPLY_SAVED()
	mat_l_glove:SetTexture("$basetexture", handtex..l_glove:GetInt())
	mat_r_glove:SetTexture("$basetexture", handtex..r_glove:GetInt())
	mat_l_hand:SetTexture("$basetexture", handtex..l_hand:GetInt())
	mat_r_hand:SetTexture("$basetexture", handtex..r_hand:GetInt())
	mat_l_sleeve:SetTexture("$basetexture", handtex..l_sleeve:GetInt())
	mat_r_sleeve:SetTexture("$basetexture", handtex..r_sleeve:GetInt())
end
hook.Add("InitPostEntity", "KF_ARMS_INITPOSTENTITY_APPLY_SAVED", KF_ARMS_APPLY_SAVED)

KF_ARMS_APPLY_SAVED()

/////////////////////////////////////////////////////////////////////////////////////
