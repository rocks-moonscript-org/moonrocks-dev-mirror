package = 'lua-schema'
version = '0.0.1-3'
source = {
    url = 'https://framagit.org/fperrad/lua-schema/raw/releases/lua-schema-0.0.1.tar.gz',
    md5 = '7c36f0b23233514d8e9e1f53eafb8ce5',
    dir = 'lua-schema-0.0.1',
}
description = {
    summary = "JSON Schema data validator",
    detailed = "TODO",
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
    copy_directories = { 'test' },
}
