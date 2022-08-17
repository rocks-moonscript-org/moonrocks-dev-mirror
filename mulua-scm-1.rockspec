package = 'mulua'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/mulua',
    branch = 'master',
}

description = {
    summary = 'Practical mutation testing and fault injection for Lua',
    homepage = 'https://github.com/ligurio/mulua',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'ISC',
}

dependencies = {
    'argparse >= 0.6.0',
    'lua-parser >= 1.0.2',
    'lua >= 5.1',
}

build = {
    type = 'make',
    -- Nothing to build.
    build_pass = false,
    variables = {
        LUADIR='$(LUADIR)',
    },
    copy_directories = {
    },
}
