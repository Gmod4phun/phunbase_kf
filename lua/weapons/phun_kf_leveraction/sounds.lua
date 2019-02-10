local path = "gmod4phun/kf_weapons/leveraction/"

PHUNBASE:addFireSound("PB_KF_LAR_FIRE", {path.."Rifle_FireST1.wav", path.."Rifle_FireST2.wav", path.."Rifle_FireST3.wav", path.."Rifle_FireST4.wav"}, 0.5, 100, CHAN_WEAPON)

-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_014", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_014.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_037", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_037.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_060", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_060.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_083", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_083.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_107", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_107.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_130", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_130.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_151", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_151.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_176", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_176.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_199", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_199.wav")
-- PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_224", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_224.wav")

PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_START", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_000.wav")
PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_INSERT", {"gmod4phun/kf_weapons/leveraction/Rifle_Reload_014.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_037.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_060.wav"})
PHUNBASE:addReloadSound("PB_KF_LAR_RELOAD_END", "gmod4phun/kf_weapons/leveraction/Rifle_Reload_242.wav")

PHUNBASE:addReloadSound("PB_KF_LAR_PUMP_FORWARD", {"gmod4phun/kf_weapons/leveraction/Rifle_Reload1.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload2.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload3.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload4.wav"})
PHUNBASE:addReloadSound("PB_KF_LAR_PUMP_BACK", {"gmod4phun/kf_weapons/leveraction/Rifle_Reload1_2.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload2_2.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload3_2.wav", "gmod4phun/kf_weapons/leveraction/Rifle_Reload4_2.wav"})

PHUNBASE:addRegularSound("PB_KF_LAR_DRYFIRE", "gmod4phun/kf_weapons/leveraction/Rifle_DryFire.wav")
PHUNBASE:addRegularSound("PB_KF_LAR_PICKUP", "gmod4phun/kf_weapons/leveraction/Rifle_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_LAR_SELECT", "gmod4phun/kf_weapons/leveraction/Rifle_Select.wav")
