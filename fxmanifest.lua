game 'rdr3'
fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


server_scripts {
    'server.lua',
}

client_scripts {
    'client.lua',
}

shared_scripts {
    'config.lua',
}


lua54 'yes'

escrow_ignore {
    'config.lua',
}