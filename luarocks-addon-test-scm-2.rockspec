package = 'luarocks-addon-test'
version = 'scm-2'
source = {
    url = 'git://github.com/xiaq/luarocks-addon-test.git',
}
description = {
    summary = 'A testing addon for LuaRocks.',
    license = 'BSD',
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ["luarocks.addon.test"] = 'src/test.lua'
    },
}
