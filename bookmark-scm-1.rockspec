local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/bookmark'

rockspec_format = '3.0'
package = 'bookmark'
version = modrev .. '-' .. specrev

description = {
  summary = [[A new bookmark (outline) organization for hyperref]],
  detailed =
  [[This package implements a new bookmark (outline) organization for package hyperref. Bookmark properties such as style and color can now be set. Other action types are available (URI, GoToR, Named). The bookmarks are generated in the first compile run. Package hyperref uses two runs.]],
  labels = { 'tex', 'latex' },
  homepage = 'https://github.com/ho-tex/bookmark',
  license = 'LPPL-1.3c'
}

build_dependencies = { 'lualatex', 'texrocks', 'latex-base' }

dependencies = { 'hyperref' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/macros/latex/contrib/bookmark.zip',
  }
end

build = {
  type = 'command',
  build_command = [[
  texrocks install &&
    lualatex --interaction=nonstopmode bookmark.ins
  ]],
  install = {
    conf = {
      ['../tex/latex/bookmark/bkm-dvipdfm.def'] = 'bkm-dvipdfm.def',
      ['../tex/latex/bookmark/bkm-dvips.def'] = 'bkm-dvips.def',
      ['../tex/latex/bookmark/bkm-pdftex.def'] = 'bkm-pdftex.def',
      ['../tex/latex/bookmark/bkm-vtex.def'] = 'bkm-vtex.def',
      ['../tex/latex/bookmark/bookmark.sty'] = 'bookmark.sty',
      ['../doc/latex/bookmark/bookmark.pdf'] = 'bookmark.pdf',
    }
  }
}
