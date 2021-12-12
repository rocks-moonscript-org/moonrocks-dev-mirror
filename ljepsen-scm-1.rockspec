package = 'ljepsen'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/ljepsen',
    branch = 'master',
}

description = {
    summary = 'A framework for distributed systems verification, with fault injection',
    homepage = 'https://github.com/ligurio/ljepsen',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'ISC',
}

dependencies = {
    'lua >= 5.1',
    'checks == 1.0-3',
    'fun ==  0.1.3-1',
    'lua-cjson == 2.1.0.6-1',
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
