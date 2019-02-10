local path = "gmod4phun/kf_weapons/mp5/"

PHUNBASE:addFireSound("PB_KF_MP5_FIRE", path.."WEP_MP5_Fire_Single_01_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_MP5_BOLTBACK", path.."WEP_MP5_Foley_Bolt_Back.wav")
PHUNBASE:addReloadSound("PB_KF_MP5_BOLTUP", path.."WEP_MP5_Foley_Bolt_Up.wav")
PHUNBASE:addReloadSound("PB_KF_MP5_MAGOUT", path.."WEP_MP5_Foley_Ciip_Release.wav")
PHUNBASE:addReloadSound("PB_KF_MP5_MAGIN", path.."WEP_MP5_Foley_Ciip_Insert.wav")

PHUNBASE:addReloadSound("PB_KF_MP5_RESET", path.."WEP_MP5_Foley_Reset.wav")
PHUNBASE:addReloadSound("PB_KF_MP5_PICKUP", path.."WEP_MP5_Foley_Pickup.wav")
PHUNBASE:addReloadSound("PB_KF_MP5_SELECT", path.."WEP_MP5_Foley_Select.wav")