--- https://discord.gg/scully ---
fx_version 'cerulean'

game 'gta5'

lua54 'yes'
use_experimental_fxv2_oal 'yes'

version '1.9.9f'

dependencies {
    '/server:5848',
    '/onesync',
    'ox_lib'
}

files {
    'locales/*.lua',
    'data/*.lua',
    'data/**/*.lua',
    'custom_emotes.lua',
    'prop_dump.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua',
    'compat/*.lua'
}

data_file 'DLC_ITYP_REQUEST' 'bzzz_foodpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_prop_torch_fire001.ytyp'
data_file 'DLC_ITYP_REQUEST' 'natty_props_lollipops.ytyp'
data_file 'DLC_ITYP_REQUEST' 'scully_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'badges.ytyp'
data_file 'DLC_ITYP_REQUEST' 'lilflags_ytyp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'prideprops_ytyp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_food_icecream_pack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_effect_cigarpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_murderpack.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_animal_fish002.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_food_dessert_a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_prop_give_gift.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_package_pizzahut.ytyp'
data_file 'DLC_ITYP_REQUEST' 'ultra_ringcase.ytyp'
data_file 'DLC_ITYP_REQUEST' 'bzzz_food_xmas22.ytyp'
data_file 'DLC_ITYP_REQUEST' 'pprp_icefishing.ytyp'
