package = 'luamut'
version = 'scm-1'
source = {
    url = 'git+https://github.com/ligurio/luamut',
    branch = 'master',
}

description = {
    summary = 'A practical mutation testing tool for Lua',
    homepage = 'https://github.com/ligurio/luamut',
    maintainer = 'Sergey Bronnikov <estetus@gmail.com>',
    license = 'MIT',
}

dependencies = {
    'lua >= 5.1',
}

build = {
   type = "builtin",
   modules = {
      luamut = "luamut/init.lua",
      ["luamut.codegen"] = "luamut/codegen.lua",
      ["luamut.decoder"] = "luamut/decoder.lua",
      ["luamut.lexer"] = "luamut/lexer.lua",
      ["luamut.mutate"] = "luamut/mutate.lua",
      ["luamut.parse"] = "luamut/parse.lua",
      ["luamut.parser"] = "luamut/parser.lua",
      ["luamut.unicode"] = "luamut/unicode.lua",
      ["luamut.unicode_printability_boundaries"] = "luamut/unicode_printability_boundaries.lua",
      ["luamut.utils"] = "luamut/utils.lua",
   },
}
