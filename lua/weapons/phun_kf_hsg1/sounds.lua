local path = "gmod4phun/kf_weapons/shotgun_hsg/"

PHUNBASE:addFireSound("PB_KF_HSG1_FIRE", path.."KSG_Fire_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_HSG1_MAGIN", path.."KSG_Magin.wav")
PHUNBASE:addReloadSound("PB_KF_HSG1_MAGOUT", path.."KSG_Magout.wav")
PHUNBASE:addReloadSound("PB_KF_HSG1_BOLTBACK", path.."KSG_Pullback.wav")
PHUNBASE:addReloadSound("PB_KF_HSG1_BOLTFORWARD", path.."KSG_Pullfwd.wav")

PHUNBASE:addRegularSound("PB_KF_HSG1_PICKUP", path.."KSG_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_HSG1_SELECT", path.."KSG_Select.wav")
