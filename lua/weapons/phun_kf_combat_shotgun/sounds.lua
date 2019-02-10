local path = "gmod4phun/kf_weapons/shotgun_combat/"

PHUNBASE:addFireSound("PB_KF_COMBATSHOTGUN_FIRE", {path.."SG_FireST1.wav", path.."SG_FireST2.wav", path.."SG_FireST3.wav", path.."SG_FireST4.wav"}, 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_COMBATSHOTGUN_RELOAD_CLOTH", path.."SG_Reload_000.wav")
PHUNBASE:addReloadSound("PB_KF_COMBATSHOTGUN_RELOAD_INSERT", {path.."SG_Reload_016.wav", path.."SG_Reload_033.wav", path.."SG_Reload_050.wav", path.."SG_Reload_069.wav", path.."SG_Reload_087.wav", path.."SG_Reload_105.wav", path.."SG_Reload_123.wav", path.."SG_Reload_140.wav"})
PHUNBASE:addReloadSound("PB_KF_COMBATSHOTGUN_RELOAD_BOLT", path.."SG_Reload_157.wav")

PHUNBASE:addReloadSound("PB_KF_COMBATSHOTGUN_PUMP_1", {path.."SG_Reload1.wav", path.."SG_Reload2.wav", path.."SG_Reload3.wav"})
PHUNBASE:addReloadSound("PB_KF_COMBATSHOTGUN_PUMP_2", {path.."SG_Reload1_2.wav", path.."SG_Reload2_2.wav", path.."SG_Reload3_2.wav", path.."SG_Reload4_2.wav"})

PHUNBASE:addRegularSound("PB_KF_COMBATSHOTGUN_SELECT", path.."SG_Select.wav")
