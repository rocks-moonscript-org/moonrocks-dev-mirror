package = 'lcc'
version = 'dev-1'

source = {
    url = 'git://github.com/mambrozio/lcc',
    branch = 'master',
}

description = {
    summary = 'A LR(0) parser library for Lua.',
    detailed = [[
        This is library that provides a LR(0) parser
        as a library written in Lua.
    ]],
    homepage = 'https://github.com/mambrozio/lcc',
    license = 'GPLv3',
}

dependencies = {
    'lua >= 5.3',
}

build = {
    type = 'builtin',
    modules = {
        ['lcc']                = 'lcc.lua',
        ['lcc.lr0']            = 'lcc/lr0.lua',
        ['lcc.grammar_lexer']  = 'lcc/grammar_lexer.lua',
        ['lcc.grammar_parser'] = 'lcc/grammar_parser.lua',
        ['lcc.Item']           = 'lcc/Item.lua',
        ['lcc.State']          = 'lcc/State.lua',
        ['lcc.util']           = 'lcc/util.lua',
    },
}
