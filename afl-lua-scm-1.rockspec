package = 'afl-lua'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/afl-lua',
    branch = 'master',
}

description = {
    summary = 'A module that enables integration with American Fuzzy Lop',
    homepage = 'https://github.com/ligurio/afl-lua',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'ISC',
}

dependencies = {
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
