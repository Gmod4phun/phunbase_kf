if !CLIENT then return end

AddCSLuaFile()

local function PB_KF_MENU_PANEL(panel)
	panel:ClearControls()
	
	panel:AddControl("Label", {Text = "Killing Floor Weapons Hands"})
	
	panel:AddControl("CheckBox", {Label = "Use GMod Player Hands?", Command = "pb_kf_arms_use_gmod_hands"})
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_glove_l")
	slider:SetValue(GetConVarNumber("pb_kf_arms_glove_l"))
	slider:SetText("LEFT GLOVE")
	panel:AddItem(slider)
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_glove_r")
	slider:SetValue(GetConVarNumber("pb_kf_arms_glove_r"))
	slider:SetText("RIGHT GLOVE")
	panel:AddItem(slider)
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_hand_l")
	slider:SetValue(GetConVarNumber("pb_kf_arms_hand_l"))
	slider:SetText("LEFT HAND")
	panel:AddItem(slider)
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_hand_r")
	slider:SetValue(GetConVarNumber("pb_kf_arms_hand_r"))
	slider:SetText("RIGHT HAND")
	panel:AddItem(slider)
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_sleeve_l")
	slider:SetValue(GetConVarNumber("pb_kf_arms_sleeve_l"))
	slider:SetText("LEFT SLEEVE")
	panel:AddItem(slider)
	
	local slider = vgui.Create("DNumSlider", panel)
	slider:SetDecimals(0)
	slider:SetMin(0)
	slider:SetMax(45)
	slider:SetConVar("pb_kf_arms_sleeve_r")
	slider:SetValue(GetConVarNumber("pb_kf_arms_sleeve_r"))
	slider:SetText("RIGHT SLEEVE")
	panel:AddItem(slider)
	
end

local function PB_KF_PopulateToolMenu()
	spawnmenu.AddToolMenuOption("Utilities", "PHUNBASE", "PB_KF_MENU", "Killing Floor", "", "", PB_KF_MENU_PANEL)
end

hook.Add("PopulateToolMenu", "PB_KF_PopulateToolMenu", PB_KF_PopulateToolMenu)

local function PB_KF_HandChange()
	local ply = LocalPlayer()
	local wep = ply:GetActiveWeapon()
	
	if IsValid(wep) and wep.PHUNBASEWEP and wep.PHUNBASEWEP_KF then
		wep:_UpdateHands()
	end
end
cvars.AddChangeCallback("pb_kf_arms_use_gmod_hands", PB_KF_HandChange)
