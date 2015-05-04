package = 'luairc'
version = '0.1-0'
source = {
  url = 'git://github.com/JakobOvrum/LuaIRC.git',
  tag = 'master',
}
description = {
  summary = 'IRC library for Lua - HEAD.',
  detailed = 'Current development branch.',
  homepage = 'https://github.com/JakobOvrum/LuaIRC',
  license = 'MIT',
  maintainer = 'JakobOvrum',
}
dependencies = {
  'lua >= 5.1',
  'luasocket',
}
build = {
  type = 'builtin',
  modules = {
    ['irc'] = 'init.lua',
    ['irc.asyncoperations'] = 'asyncoperations.lua',
    ['irc.handlers'] = 'handlers.lua',
    ['irc.set'] = 'set.lua',
    ['irc.util'] = 'util.lua',
  },
}
