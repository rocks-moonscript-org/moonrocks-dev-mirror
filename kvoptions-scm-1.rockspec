local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/ho-tex/kvoptions'

rockspec_format = '3.0'
package = 'kvoptions'
version = modrev .. '-' .. specrev

description = {
  summary = 'Key value format for package options',
  detailed =
  [[This package offers support for package authors who want to use options in key-value format for their package options.]],
  labels = { 'tex', 'plaintex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

build_dependencies = { 'luatex', 'texrocks', 'latex-base' }

dependencies = { 'etexcmds', 'ltxcmds', 'latex-graphics', 'iftex' }

source = {
  url = repo_url .. '/releases/download/release-' .. git_ref .. '-PL' .. specrev .. '/' .. package .. '.tds.zip',
  dir = '.'
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/kvoptions.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
  texrocks install &&
    luatex --interaction=nonstopmode kvoptions.dtx
]],
  install = {
    conf = {
      ['../doc/latex/kvoptions/kvoptions.pdf'] = 'kvoptions.pdf',
      ['../tex/latex/kvoptions/kvoptions.sty'] = 'kvoptions.sty',
      ['../tex/latex/kvoptions/kvoptions-patch.sty'] = 'kvoptions-patch.sty',
    }
  }
}
