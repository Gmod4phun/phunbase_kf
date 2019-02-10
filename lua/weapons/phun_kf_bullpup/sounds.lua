local path = "gmod4phun/kf_weapons/bullpup/"

PHUNBASE:addFireSound("PB_KF_BULLPUP_FIRE", {path.."Bullpup_FireST1.wav", path.."Bullpup_FireST2.wav", path.."Bullpup_FireST3.wav"}, 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_BULLPUP_RELOAD_013", "gmod4phun/kf_weapons/bullpup/Bullpup_Reload_013.wav")
PHUNBASE:addReloadSound("PB_KF_BULLPUP_RELOAD_042", "gmod4phun/kf_weapons/bullpup/Bullpup_Reload_042.wav")

PHUNBASE:addRegularSound("PB_KF_BULLPUP_PICKUP", "gmod4phun/kf_weapons/bullpup/Bullpup_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_BULLPUP_SELECT", "gmod4phun/kf_weapons/bullpup/Bullpup_Select.wav")
