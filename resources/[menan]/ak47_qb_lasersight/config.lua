Config = {}

Config.Key = 'L' --If another script is already using this key then laser will not active by pressing it. You have to change your keybind from Fivem setting.
Config.MaxLasersInArea = 10 -- More laser, more cpu use
Config.MaxLaserDistance = 100.0
Config.Color = {r = 124, g = 252, b = 0, a = 200} --Color of laser

Config.JobsOnly = false     --Enable only if you want whitelisted job can use laser
Config.Whitelistedjobs = {
    ['police'] = true,
    ['sheriff'] = true,
}

Config.OffsetByWeapon = {   --Adjust laser start position / laser will only work if the weapon listed here
    [`WEAPON_PISTOL`]           = vector3(0.0, 0.0, 0.02),
    [`WEAPON_SMG`]              = vector3(0.2, -0.0, 0.0),
    [`WEAPON_CARBINERIFLE`]     = vector3(0.2, -0.0, 0.0),
    [`WEAPON_ASSAULTRIFLE`]     = vector3(0.2, -0.0, 0.0),
    [`WEAPON_PUMPSHOTGUN`]      = vector3(0.5, 0.0, 0.0),
}