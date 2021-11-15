package = 'lua-jepsen'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/lua-jepsen',
    branch = 'master',
}

description = {
    summary = 'A framework for distributed systems verification, with fault injection',
    homepage = 'https://github.com/ligurio/lua-jepsen',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'ISC',
}

dependencies = {
    'lua >= 5.1',
    'tarantool-checks == 3.1.0-1',
    'tarantool-errors == 2.2.1-1',
    'fun ==  0.1.3-1',
    'inspect == 3.1.1-0',
    'lua-cjson = 2.1.0.6-1',
}

build = {
    type = 'make',
    -- Nothing to build.
    build_pass = false,
    variables = {
        LUADIR='$(LUADIR)',
    },
    copy_directories = {
        'test',
    },
}
