package = 'box'
version = 'scm-1'
source = {
  url = 'git://github.com/razmjenavjestina/luabox.git',
  branch = 'master',
}
description = {
  summary = 'Lua Box',
  detailed = 'Lua Box',
  homepage = 'https://gitlab.com/razmjenavjestina/luabox',
  license = 'MIT',
}
dependencies = {
  "lua >= 5.1",
  "exc",
}
build = {
  type = 'none',
  install = {
    lua = {
      ['box']         = 'box.lua',
      ['box.cmdline'] = 'box/cmdline.lua',
      ['box.command'] = 'box/command.lua',
      ['box.config']  = 'box/config.lua',
      ['box.unit']    = 'box/unit.lua',
    },
    bin = {
      ['luabox']      = 'bin/luabox',
    },
  },
}
