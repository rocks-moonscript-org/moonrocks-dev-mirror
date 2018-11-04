rockspec_format = '3.0'
package = 'ljlinenoise'
version = '0.1.3-3'
source = {
    url = 'https://framagit.org/fperrad/ljlinenoise/raw/releases/ljlinenoise-0.1.3.tar.gz',
    md5 = '1741642ef921b311d870c3c82c79d55e',
    dir = 'ljlinenoise-0.1.3',
}
description = {
    summary = "Line editing in pure LuaJIT",
    detailed = [[
        ljlinenoise is a pure LuaJIT port of linenoise (https://github.com/antirez/linenoise),
        a small alternative to readline and libedit.
        ljlinenoise is based on ljsyscall (https://github.com/justincormack/ljsyscall).
        ljlinenoise is compatible with lua-linenoise (https://github.com/hoelzro/lua-linenoise).
    ]],
    homepage = 'https://fperrad.frama.io/ljlinenoise/',
    issues_url = 'https://framagit.org/fperrad/ljlinenoise/issues',
    maintainer = 'Francois Perrad',
    license = 'MIT'
}
dependencies = {
    'luajit >= 2.0',
    'ljsyscall >= 0.9',
}
build = {
    type = 'builtin',
    modules = {
        ['linenoise'] = 'src/linenoise.lua',
    },
    install = {
        bin = {
            'src/lrepl',
            'src/ljrepl',
        }
    },
    copy_directories = { 'docs', 'test' },
}
test_dependencies = {
    'lua-testmore',
}
test = {
    type = 'command',
    command = 'make test',
}
