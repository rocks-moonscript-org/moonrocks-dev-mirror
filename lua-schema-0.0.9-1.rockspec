package = 'lua-schema'
version = '0.0.9-1'
source = {
    url = 'https://framagit.org/fperrad/lua-schema/raw/releases/lua-schema-0.0.9.tar.gz',
    md5 = 'b9bdece8e93f23b9c4cfb4479f42abec',
    dir = 'lua-schema-0.0.9',
}
description = {
    summary = "JSON Schema data validator",
    detailed = [[
lua-schema is a JSON Schema (classical & modern) data validator.

It validates data from a JSON instance or from any equivalent data model,
for example CBOR, Message Pack, UBJSON or just plain Lua.
    ]],
    homepage = 'https://fperrad.frama.io/lua-schema',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lpeg',
}
build = {
    type = 'builtin',
    modules = {
        ['schema']              = 'src/schema.lua',
        ['schema.core']         = 'src/schema/core.lua',
        ['schema.draft-04']     = 'src/schema/draft-04.lua',
        ['schema.draft-06']     = 'src/schema/draft-06.lua',
        ['schema.draft-07']     = 'src/schema/draft-07.lua',
        ['schema.draft2019-09'] = 'src/schema/draft2019-09.lua',
        ['schema.draft2020-12'] = 'src/schema/draft2020-12.lua',
        ['schema.draftnext']    = 'src/schema/draftnext.lua',
        ['schema.format']       = 'src/schema/format.lua',
        ['schema.keyword']      = 'src/schema/keyword.lua',
        ['schema.utils']        = 'src/schema/utils.lua',
    },
    copy_directories = { 'docs', 'test' },
}
