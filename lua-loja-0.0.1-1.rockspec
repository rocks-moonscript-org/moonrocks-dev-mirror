package = 'lua-Loja'
version = '0.0.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-loja/raw/releases/lua-loja-0.0.1.tar.gz',
    md5 = 'ca0732c66e2a2c54dba04b2cf97413c0',
    dir = 'lua-Loja-0.0.1',
}
description = {
    summary = "transparent persistence with a key/value store",
    detailed = [[
With this module, a LMDB (Lightning Memory-Mapped Database) ie. a key/value store on disk, is mapped on a Lua table.
Keys must be string, and values are serialized before storage (by default, in UBJSON format).
    ]],
    homepage = 'https://fperrad.frama.io/lua-loja',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.2',
    'lightningmdb',
    'lua-ubjson',
}
build = {
    type = 'builtin',
    modules = {
        ['Loja']                = 'src/Loja.lua',
    },
    copy_directories = { 'test' },
}
