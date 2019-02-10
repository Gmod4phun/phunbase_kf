local path = "gmod4phun/kf_weapons/mk23/"

PHUNBASE:addFireSound("PB_KF_MK23_FIRE", path.."MK23_Fire_M.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_MK23_MAGIN", path.."Mk23_ClipInsert.wav")
PHUNBASE:addReloadSound("PB_KF_MK23_MAGOUT", path.."Mk23_ClipRelease.wav")
PHUNBASE:addReloadSound("PB_KF_MK23_BOLTBACK", path.."Mk23_ChamberBack.wav")
PHUNBASE:addReloadSound("PB_KF_MK23_BOLTFORWARD", path.."Mk23_ChamberForward.wav")
PHUNBASE:addReloadSound("PB_KF_MK23_BOLTHIT", path.."Mk23_ChamberHit.wav")

PHUNBASE:addRegularSound("PB_KF_MK23_PICKUP", path.."MK23_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_MK23_SELECT", path.."MK23_Select.wav")
