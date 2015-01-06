package = 'bhttp'
version = 'scm-1'
source  = {
    url    = 'git://github.com/wprayudo/http.git',
    branch = 'master',
}
description = {
    summary  = "Bee module for HTTP client/server.",
    homepage = 'https://github.com/wprayudo/http/',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',

    modules = {
        ['http.lib'] = 'http/lib.c',
        ['http.client'] = 'http/client.lua',
        ['http.server'] = 'http/server.lua',
        ['http.mime_types'] = 'http/mime_types.lua',
        ['http.codes'] = 'http/codes.lua',
    }
}

-- vim: syntax=lua
