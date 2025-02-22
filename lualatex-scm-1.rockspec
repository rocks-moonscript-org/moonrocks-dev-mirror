local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'lualatex'
version = modrev .. '-' .. specrev

description = {
  summary = 'LuaTeX for LaTeX',
  detailed =
  [[See https://github.com/Freed-Wu/texrocks]],
  labels = { 'tex', 'latex' },
  homepage = 'https://www.luatex.org/',
  license = 'GPL-3.0'
}

build_dependencies = { 'texrocks', 'latex-fonts' }

-- tex-ini-files provide lualatexquotejobname.lua
-- latex-base depends on l3backend depends on unicode-data
-- refer https://ctan.org/pkg/required
dependencies = { 'tex-ini-files', 'amsfonts', 'latex-base' }

source = {
  url = "https://github.com/Freed-Wu/texrocks/releases/download/0.0.1/empty.zip",
  dir = '.'
}

build = {
  type = 'command',
  build_command = [[

texrocks install &&
  install $(which texlua) lualatex &&
  ./lualatex --ini --interaction=nonstopmode lualatex.ini
]],
  install = {
    bin = { 'lualatex' },
    conf = {
      ['../web2c/luahbtex/lualatex.fmt'] = 'lualatex.fmt'
    }
  }
}
