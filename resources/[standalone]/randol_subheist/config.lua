return {
    EnableShake = true, -- Camera motion movement.
    Ped = {
        model = `mp_m_bogdangoon`,
        coords = vec4(-3419.03, 956.49, 11.91, 179.26),
        scenario = 'WORLD_HUMAN_BINOCULARS',
    },
    AggroPeds = {
        vec4(514.05, 4878.6, -63.59, 273.09),
        vec4(514.38, 4874.12, -63.58, 352.54),
        vec4(514.82, 4866.81, -63.56, 2.45),
        vec4(515.5, 4862.48, -63.56, 86.58),
        vec4(512.9, 4855.17, -63.56, 287.29),
        vec4(512.04, 4848.62, -63.59, 284.41),
        vec4(514.69, 4848.48, -63.59, 13.6),
        vec4(514.31, 4843.71, -63.59, 169.99),
        vec4(512.58, 4842.37, -63.59, 14.33),
        vec4(514.7, 4838.64, -63.59, 47.63),
        vec4(512.3, 4835.15, -63.59, 357.14),
        vec4(516.21, 4835.21, -63.59, 29.82),
        vec4(515.11, 4827.13, -63.59, 305.52),
        vec4(510.15, 4828.03, -63.59, 261.74),
        vec4(517.09, 4825.12, -67.19, 11.3),
        vec4(512.18, 4826.98, -67.19, 266.33),
        vec4(511.42, 4830.68, -67.19, 187.36),
        vec4(512.79, 4832.92, -67.19, 271.4),
        vec4(516.28, 4830.84, -67.19, 226.37),
        vec4(516.5, 4838.75, -67.19, 92.75),
        vec4(511.46, 4840.5, -67.19, 239.44),
        vec4(516.19, 4843.35, -67.19, 147.39),
        vec4(514.58, 4835.63, -69.99, 49.9),
        vec4(515.74, 4826.8, -69.99, 35.01),
        vec4(513.1, 4828.35, -69.99, 12.53),
        vec4(514.36, 4820.79, -69.99, 17.55),
        vec4(515.81, 4847.55, -69.99, 173.58),
        vec4(515.2, 4872.75, -69.99, 138.54),
        vec4(515.39, 4874.72, -69.99, 76.79),
        vec4(512.9, 4875.14, -69.99, 353.13),
        vec4(514.91, 4891.98, -70.0, 202.74),
        vec4(517.0, 4901.13, -67.14, 136.21),
        vec4(511.0, 4892.48, -67.14, 180.94),
        vec4(512.29, 4885.5, -67.19, 115.22),
    },
    SubmarineSpawn = vec4(514.35, 4888.06, -62.59, 179.26), -- Where you spawn in the submarine. (THIS IS THE SAFEST SPOT, DON'T CHANGE)
    FailedPosition = vec4(-2165.29, 5178.85, 14.11, 312.84), -- Where you get placed if you fail.
    SuccessPosition = vec4(-3311.46, 993.44, 0.5, 149.28), -- Where you get placed if you succeeed.
    MiddlePoint = vec3(514.27, 4840.97, -66.19),
    PedHealth = 400,
    PedAccuracy = 35,
    HackType = 'numeric',
    HackSeconds = 25,
    MaxAttempts = 2,
    PedWeapon = `WEAPON_COMBATPISTOL`,
}