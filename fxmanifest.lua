fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

name 'scully_emotemenu'
author 'https://discord.gg/scully'
version '2.0.0'

dependencies {
    '/server:7290',
    '/onesync',
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'client/main.lua',
    'client/menu.lua'
}

server_scripts {
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
    'shared/modules/utils.lua',
    'client/data/ped_types.lua',
    'client/modules/handsup.lua',
    'client/modules/kvp.lua',
    'client/modules/placement.lua',
    'client/modules/point.lua',
    'client/modules/preview.lua',
    'client/modules/ragdoll.lua',
    'client/modules/stance.lua'
}