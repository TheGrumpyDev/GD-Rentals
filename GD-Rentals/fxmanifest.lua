fx_version 'cerulean'

game 'gta5'

author 'The Grumpy Dev'
description 'GD-Rentals'
version '2.0.0'

shared_scripts {
    'locales/en.lua',
    'config.lua',
}

client_scripts {
    'client/main.lua'
}

server_script 'server/main.lua'

escrow_ignore {
    'config.lua',
    'README.md'
}

lua54 'yes'

dependency '/assetpacks'