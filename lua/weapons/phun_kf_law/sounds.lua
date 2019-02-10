local path = "gmod4phun/kf_weapons/law/"

PHUNBASE:addFireSound("PB_KF_LAW_FIRE", {path.."LAW_FireST1.wav", path.."LAW_FireST2.wav"}, 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_LAW_RELOAD_006", path.."LAW_Reload_006.wav")
PHUNBASE:addReloadSound("PB_KF_LAW_RELOAD_040", path.."LAW_Reload_040.wav")
PHUNBASE:addReloadSound("PB_KF_LAW_RELOAD_076", path.."LAW_Reload_076.wav")
PHUNBASE:addReloadSound("PB_KF_LAW_RELOAD_101", path.."LAW_Reload_101.wav")

PHUNBASE:addRegularSound("PB_KF_LAW_PICKUP", path.."LAW_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_LAW_SELECT", path.."LAW_Select.wav")
