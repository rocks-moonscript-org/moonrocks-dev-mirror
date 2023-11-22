package = 'lua-ubjson'
version = '0.0.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-ubjson/raw/releases/lua-ubjson-0.0.1.tar.gz',
    md5 = 'a79b6539f1477b258a3f173c10868ca6',
    dir = 'lua-ubjson-0.0.1',
}
description = {
    summary = "a pure Lua implementation of UBJSON",
    detailed = [[
The UBJSON is a data interchange format.
It is a binary form directly imitating JSON, but requiring fewer bytes of data.

lua-ubjson is aligned with the Draft 12 specifications.
    ]],
    homepage = 'https://fperrad.frama.io/lua-ubjson/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['ubjson']     = 'src/ubjson.lua',
    },
    copy_directories = { 'docs', 'test' },
}
