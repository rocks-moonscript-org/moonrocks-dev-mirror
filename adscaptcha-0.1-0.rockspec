package = 'adscaptcha'
version = '0.1-0'
source = {
  url = 'git://github.com/develCuy/adscaptcha-lua-client.git',
  tag = 'master',
}
description = {
  summary = "Port of minteye's AdsCaptcha library to Lua - HEAD",
  detailed = 'Current development branch.',
  homepage = 'https://github.com/develCuy/adscaptcha-lua-client',
  license = 'GPL-3',
  maintainer = 'Fernando Paredes Garcia <fernando@develcuy.com>',
}
dependencies = {
  'lua = 5.1',
  'luuid = 20120501-1',
  'dkjson',
  'luasocket',
}
build = {
  type = 'builtin',
  modules = {
    adscaptcha = 'adscaptcha.lua',
  },
}