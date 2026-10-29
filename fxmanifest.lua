fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

name 'scully_emotemenu'
author 'https://discord.gg/scully'
version '2.1.0'
repository 'https://github.com/Scullyy/scully_emotemenu'
description 'An emote menu for the FiveM community.'

dependencies {
    '/server:7290',
    '/onesync',
    'ox_lib'
}

ox_libs {
    'locale'
}

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client/main.lua',
    'client/menu.lua'
}

server_scripts {
    'server/version_check.lua',
    'server/main.lua'
}

files {
    'locales/*.json',
    'shared/data/config.lua',
    'shared/data/expressions.lua',
    'shared/data/scenarios.lua',
    'shared/data/walks.lua',
    'shared/data/emotes/animal_emotes.lua',
    'shared/data/emotes/consumable_emotes.lua',
    'shared/data/emotes/dance_emotes.lua',
    'shared/data/emotes/general_emotes.lua',
    'shared/data/emotes/prop_emotes.lua',
    'shared/data/emotes/synchronized_dance_emotes.lua',
    'shared/data/emotes/synchronized_emotes.lua',
    'shared/data/emotes/exit_emotes.lua',
    'shared/modules/utils.lua',
    'client/data/ped_types.lua',
    'client/data/scenario_models.lua',
    'client/modules/handsup.lua',
    'client/modules/kvp.lua',
    'client/modules/placement.lua',
    'client/modules/point.lua',
    'client/modules/preview.lua',
    'client/modules/ragdoll.lua',
    'client/modules/stance.lua'
}

data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_foodpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_prop_torch_fire001.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[Natty3d]/natty_props_lollipops.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[Scully]/scully_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[Sam]/badges.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[SMGMissy]/lilflags_ytyp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[SMGMissy]/prideprops_ytyp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_food_icecream_pack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_effect_cigarpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_murderpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_animal_fish002.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_food_dessert_a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_prop_give_gift.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_package_pizzahut.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[Ultrahacx]/ultra_ringcase.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[BzZzi]/bzzz_food_xmas22.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[Props]/[EP]/pprp_icefishing.ytyp'
