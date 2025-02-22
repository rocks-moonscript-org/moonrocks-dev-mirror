local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'luatex'
version = modrev .. '-' .. specrev

description = {
  summary = 'LuaTeX for plainTeX',
  detailed =
  [[See https://github.com/Freed-Wu/texrocks]],
  labels = { 'tex' },
  homepage = 'https://www.luatex.org/',
  license = 'GPL-3.0'
}

-- etex depends on knuth-lib
build_dependencies = { 'texrocks', 'tex-ini-files', 'unicode-data', 'etex' }

dependencies = { 'amsfonts' }

source = {
  url = "https://github.com/Freed-Wu/texrocks/releases/download/0.0.1/empty.zip",
  dir = '.'
}

build = {
  type = 'command',
  build_command = [[

texrocks install &&
  install $(which texlua) luatex &&
  ./luatex --ini --interaction=nonstopmode luatex.ini
]],
  install = {
    bin = { 'luatex' },
    conf = {
      ['../web2c/luahbtex/luatex.fmt'] = 'luatex.fmt'
    }
  }
}
