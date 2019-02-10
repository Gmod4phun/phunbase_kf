local path = "gmod4phun/kf_weapons/ak47/"

PHUNBASE:addFireSound("PB_KF_AK47_FIRE", {path.."AK47ST_Fire01.wav", path.."AK47ST_Fire02.wav", path.."AK47ST_Fire03.wav"}, 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_AK47_RELOAD_000", "gmod4phun/kf_weapons/ak47/AK47_Reload_000.wav")
PHUNBASE:addReloadSound("PB_KF_AK47_RELOAD_011", "gmod4phun/kf_weapons/ak47/AK47_Reload_011.wav")
PHUNBASE:addReloadSound("PB_KF_AK47_RELOAD_047", "gmod4phun/kf_weapons/ak47/AK47_Reload_047.wav")
PHUNBASE:addReloadSound("PB_KF_AK47_RELOAD_071", "gmod4phun/kf_weapons/ak47/AK47_Reload_071.wav")

PHUNBASE:addRegularSound("PB_KF_AK47_DRYFIRE", "gmod4phun/kf_weapons/ak47/AK47_DryFire.wav")
PHUNBASE:addRegularSound("PB_KF_AK47_PICKUP", "gmod4phun/kf_weapons/ak47/AK47_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_AK47_SELECT", "gmod4phun/kf_weapons/ak47/AK47_Select.wav")
