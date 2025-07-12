local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'luatexinfo'
version = modrev .. '-' .. specrev

description = {
  summary = 'LuaTeX for TeXinfo',
  detailed =
  [[See https://github.com/Freed-Wu/texrocks]],
  labels = { 'tex' },
  homepage = 'https://www.gnu.org/software/texinfo/',
  license = 'GPL-3.0'
}

build_dependencies = { 'texrocks' }

dependencies = { 'amsfonts' }

source = {
  url = "https://github.com/Freed-Wu/texrocks/releases/download/0.0.1/luatexinfo.fmt.zip",
  dir = '.'
}

build = {
  type = 'command',
  build_command = [[
  texrocks --dump luatexinfo
]],
  install = {
    bin = { 'luatexinfo', 'texinfo' },
    conf = {
      ['../web2c/luahbtex/luatexinfo.fmt'] = 'luatexinfo.fmt'
    }
  }
}
