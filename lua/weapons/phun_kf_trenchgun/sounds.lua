local path = "gmod4phun/kf_weapons/trenchgun/"

PHUNBASE:addFireSound("PB_KF_TRENCHGUN_FIRE", path.."KF_Shotgun_Dragon_Fire_S.wav", 0.5, 100, CHAN_WEAPON)

PHUNBASE:addReloadSound("PB_KF_TRENCHGUN_RELOAD_GATE", path.."TrenchGun_Bullet_Insert.wav")
PHUNBASE:addReloadSound("PB_KF_TRENCHGUN_RELOAD_INSERT", {path.."TrenchGun_Bullet_Insert_01.wav", path.."TrenchGun_Bullet_Insert_02.wav", path.."TrenchGun_Bullet_Insert_03.wav"})

PHUNBASE:addReloadSound("PB_KF_TRENCHGUN_PUMP_1", path.."TrenchGun_Pump_Back.wav")
PHUNBASE:addReloadSound("PB_KF_TRENCHGUN_PUMP_2", path.."TrenchGun_Pump_Forward.wav")
