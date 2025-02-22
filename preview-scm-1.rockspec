local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://git.savannah.gnu.org/gitweb/?p=auctex.git'

rockspec_format = '3.0'
package = 'preview'
version = modrev .. '-' .. specrev

build_dependencies = { 'lualatex', 'texrocks', 'latex-base' }

dependencies = { 'luatex85' }

description = {
  summary = 'Extract bits of a LaTeX source for output',
  detailed =
  [[The package is a free-standing part of the preview-latex bundle. The package provides the support preview-latex needs, when it chooses the matter it will preview. The output may reasonably be expected to have other uses, as in html translators, etc.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://www.gnu.org/software/auctex/preview-latex.html',
  license = 'GPL-3.0'
}

source = {
  url = repo_url .. '/releases/download/' .. git_ref .. '/' .. package .. '-ctan.zip',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/preview.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
    texrocks install &&
      lualatex --interaction=nonstopmode preview.ins
  ]],
  install = {
    conf = {
      ['../doc/latex/preview/preview.pdf'] = 'preview.pdf',
      ['../tex/latex/preview/prauctex.cfg'] = 'prauctex.cfg',
      ['../tex/latex/preview/prauctex.def'] = 'prauctex.def',
      ['../tex/latex/preview/prcounters.def'] = 'prcounters.def',
      ['../tex/latex/preview/preview.sty'] = 'preview.sty',
      ['../tex/latex/preview/prfootnotes.def'] = 'prfootnotes.def',
      ['../tex/latex/preview/prlyx.def'] = 'prlyx.def',
      ['../tex/latex/preview/prshowbox.def'] = 'prshowbox.def',
      ['../tex/latex/preview/prshowlabels.def'] = 'prshowlabels.def',
      ['../tex/latex/preview/prtightpage.def'] = 'prtightpage.def',
      ['../tex/latex/preview/prtracingall.def'] = 'prtracingall.def',
    }
  }
}
