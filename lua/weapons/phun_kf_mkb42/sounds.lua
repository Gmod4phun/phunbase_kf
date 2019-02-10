local path = "gmod4phun/kf_weapons/mkb42/"

PHUNBASE:addFireSound("PB_KF_MKB42_FIRE", path.."KF_mkb42_Fire_Single_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_MKB42_BOLTBACK", path.."mkb42_Handling_Bolt_Back.wav")
PHUNBASE:addReloadSound("PB_KF_MKB42_MAGOUT", path.."mkb42_Handling_Mag_Eject.wav")
PHUNBASE:addReloadSound("PB_KF_MKB42_MAGIN", path.."mkb42_Handling_Mag_Insert.wav")
PHUNBASE:addReloadSound("PB_KF_MKB42_MAGLOCK", path.."mkb42_Handling_Mag_Unlock.wav")
