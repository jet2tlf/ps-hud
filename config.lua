Config = {}

Config.OpenMenu = 'I' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.UseMPH = false -- If true speed math will be done as MPH, if false KPH will be used (YOU HAVE TO CHANGE CONTENT IN STYLES.CSS TO DISPLAY THE CORRECT TEXT)
Config.FuelScript = 'ox_fuel' -- change to lj-fuel if you use lj-fuel or something else if you use any other LegcyFuel compatible script

-- Admin only to change hud icons/shapes
Config.AdminOnly = false

Config.WhitelistedWeaponArmed = { -- weapons specifically whitelisted to not show armed mode
    -- miscellaneous
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`,
    -- melee
    `weapon_dagger`,
    `weapon_bat`,
    `weapon_bottle`,
    `weapon_crowbar`,
    `weapon_flashlight`,
    `weapon_golfclub`,
    `weapon_hammer`,
    `weapon_hatchet`,
    `weapon_knuckle`,
    `weapon_knife`,
    `weapon_machete`,
    `weapon_switchblade`,
    `weapon_nightstick`,
    `weapon_wrench`,
    `weapon_battleaxe`,
    `weapon_poolcue`,
    `weapon_briefcase`,
    `weapon_briefcase_02`,
    `weapon_garbagebag`,
    `weapon_handcuffs`,
    `weapon_bread`,
    `weapon_stone_hatchet`,
    -- throwables
    `weapon_grenade`,
    `weapon_bzgas`,
    `weapon_molotov`,
    `weapon_stickybomb`,
    `weapon_proxmine`,
    `weapon_snowball`,
    `weapon_pipebomb`,
    `weapon_ball`,
    `weapon_smokegrenade`,
    `weapon_flare`
}

Config.FuelBlacklist = {
	"surge",
	"iwagen",
	"voltic",
	"voltic2",
	"raiden",
	"cyclone",
	"tezeract",
	"neon",
	"omnisegt",
	"iwagen",
	"caddy",
	"caddy2",
	"caddy3",
	"airtug",
	"rcbandito",
	"imorgon",
	"dilettante",
	"khamelion",
	"wheelchair",
}
