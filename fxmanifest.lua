fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'

description 'rex-trapper'
version '2.0.5'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

client_scripts {
    'client/client.lua',
    'client/npcs.lua',
    'client/main.js'
}

server_scripts {
    'server/server.lua'
}

dependencies {
    'rsg-core',
    'ox_lib',
}

exports {
    'DataViewNativeGetEventData'
}

files {
  'locales/*.json'
}

lua54 'yes'
