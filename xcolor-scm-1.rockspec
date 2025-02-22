local git_ref = 'scm'
local modrev = git_ref:gsub('v', '')
local specrev = '1'

local repo_url = 'https://github.com/latex3/xcolor'

rockspec_format = '3.0'
package = 'xcolor'
version = modrev .. '-' .. specrev

description = {
  summary = 'Driver-independent color extensions for LaTeX and pdfLaTeX',
  detailed =
  [[The package starts from the basic facilities of the color package, and provides easy driver-independent access to several kinds of color tints, shades, tones, and mixes of arbitrary colors. It allows a user to select a document-wide target color model and offers complete tools for conversion between eight color models. Additionally, there is a command for alternating row colors plus repeated non-aligned material (like horizontal lines) in tables. Colors can be mixed like \color{red!30!green!40!blue}.]],
  labels = { 'tex', 'latex' },
  homepage = repo_url,
  license = 'LPPL-1.3c'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/xcolor.zip',
  }
end

build_dependencies = { 'luatex', 'texrocks' }

dependencies = { 'pdfcolmk', 'colortbl' }

build = {
  type = 'command',
  build_command = [[
  texrocks install &&
    luatex --interaction=nonstopmode xcolor.ins
]],
  install = {
    conf = {
      ['../doc/latex/xcolor/xcolor.pdf'] = 'xcolor.pdf',
      ['../tex/latex/xcolor/xcolor.sty'] = 'xcolor.sty',
      ['../tex/latex/xcolor/xcolor-2022-06-12.sty'] = 'xcolor-2022-06-12.sty',
    }
  }
}
