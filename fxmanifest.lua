-- [[ FX Information ]] --
fx_version 'adamant'
lua54 'yes'
game 'gta5'

-- [[ Resource Information ]] --
name 'gusti-boostfps'
author 'Gusti Agung'
version '1.0.2'
description 'The gusti-boostfps script is to make players boost their fps in the game, to prevent fps drops, stuttering, etc. from occurring.'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
    "ox_lib"
}
