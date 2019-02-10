local path = "gmod4phun/kf_weapons/zedthrower/"

PHUNBASE:addFireSound("PB_KF_ZEDTHROWER_FIRE", path.."KFO_Shotgun_Primary_Fire_S.wav", 0.5, 100, CHAN_WEAPON)
PHUNBASE:addFireSound("PB_KF_ZEDTHROWER_FIRE_ALT", path.."KFO_Shotgun_Secondary_Fire_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_ZEDTHROWER_RELOAD_A", path.."KFO_Jackhammer_Reload_A.wav")
PHUNBASE:addReloadSound("PB_KF_ZEDTHROWER_RELOAD_B", path.."KFO_Jackhammer_Reload_B.wav")
PHUNBASE:addReloadSound("PB_KF_ZEDTHROWER_RELOAD_C", path.."KFO_Jackhammer_Reload_C.wav")
PHUNBASE:addReloadSound("PB_KF_ZEDTHROWER_RELOAD_D", path.."KFO_Jackhammer_Reload_D.wav")

PHUNBASE:addRegularSound("PB_KF_ZEDTHROWER_PICKUP", path.."KFO_Shotgun_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_ZEDTHROWER_SELECT", path.."KFO_Shotgun_Select.wav")
