package = 'luarocks-addon-hello'
version = 'scm-1'
source = {
    url = 'git://github.com/xiaq/luarocks-addon-hello.git',
}
description = {
    summary = 'A sample addon for LuaRocks.',
    license = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        ["luarocks.addon.hello"] = 'src/hello.lua'
    },
}
