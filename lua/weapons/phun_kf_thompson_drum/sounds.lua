local path = "gmod4phun/kf_weapons/thompson/"

PHUNBASE:addFireSound("PB_KF_TOMMY_FIRE", path.."KFO_SP_Thompson_Fire_Single_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_TOMMYDRUM_BOLT_A", path.."KFO_SP_Thompson_Bolt_A.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMYDRUM_BOLT_B", path.."KFO_SP_Thompson_Bolt_B.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMYDRUM_MAG_A", path.."KFO_SP_Thompson_DrumMag_A.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMYDRUM_MAG_B", path.."KFO_SP_Thompson_DrumMag_B.wav")

PHUNBASE:addReloadSound("PB_KF_TOMMY_BOLTBACK", path.."Thompson_Handling_Bolt_Back.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMY_MAGOUT", path.."Thompson_Handling_Mag_Eject.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMY_MAGIN_1", path.."Thompson_Handling_Mag_Insert_01.wav")
PHUNBASE:addReloadSound("PB_KF_TOMMY_MAGIN_2", path.."Thompson_Handling_Mag_Insert_02.wav")

PHUNBASE:addRegularSound("PB_KF_TOMMY_PICKUP", path.."KFO_SP_Thompson_Pickup.wav")
PHUNBASE:addRegularSound("PB_KF_TOMMY_SELECT", path.."KFO_SP_Thompson_Select.wav")
