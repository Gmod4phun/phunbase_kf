local path = "gmod4phun/kf_weapons/handcannon/"

PHUNBASE:addFireSound("PB_KF_HANDCANNON_FIRE", {path.."50AEST_FireST1.wav", path.."50AEST_FireST2.wav", path.."50AEST_FireST3.wav"}, 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_HANDCANNON_SINGLE_RELOAD_000", "gmod4phun/kf_weapons/handcannon/50AE_Reload_000.wav")
PHUNBASE:addReloadSound("PB_KF_HANDCANNON_SINGLE_RELOAD_011", "gmod4phun/kf_weapons/handcannon/50AE_Reload_011.wav")
PHUNBASE:addReloadSound("PB_KF_HANDCANNON_SINGLE_RELOAD_043", "gmod4phun/kf_weapons/handcannon/50AE_Reload_043.wav")
PHUNBASE:addReloadSound("PB_KF_HANDCANNON_SINGLE_RELOAD_055", "gmod4phun/kf_weapons/handcannon/50AE_Reload_055.wav")

PHUNBASE:addRegularSound("PB_KF_HANDCANNON_DRYFIRE", "gmod4phun/kf_weapons/handcannon/50AE_DryFire.wav")
PHUNBASE:addRegularSound("PB_KF_HANDCANNON_PICKUP", "gmod4phun/kf_weapons/handcannon/50AE_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_HANDCANNON_SELECT", "gmod4phun/kf_weapons/handcannon/50AE_Select.wav")