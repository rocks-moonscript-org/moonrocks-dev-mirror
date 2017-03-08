package = 'exc'
version = 'scm-1'
source = {
  url = 'git://github.com/razmjenavjestina/luaexc.git',
  branch = 'master',
}
description = {
  summary = 'Lua Exceptions',
  detailed = 'Lua Exceptions',
  homepage = 'https://gitlab.com/razmjenavjestina/luaexc',
  license = 'MIT',
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = 'none',
  install = {
    lua = {
      ['exc'] = 'exc.lua',
    },
  },
}
