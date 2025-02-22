local git_ref = 'scm'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://ctan.org/pkg/luatexbase'

rockspec_format = '3.0'
package = 'luatexbase'
version = modrev .. '-' .. specrev

dependencies = { 'ctablestack' }

description = {
  summary = 'Basic resource management for LuaTeX code',
  detailed =
  [[The LaTeX kernel (LaTeX2ε 2015/10/01 onward) builds in support for LuaTeX functionality, also available as ltluatex.tex for users of plain TeX and those with older LaTeX kernel implementations. This support is based on ideas taken from the original luatexbase package, but there are interface differences.

This ‘stub’ package provides a compatibility layer to allow existing packages to upgrade smoothly to the new support structure.]],
  labels = { 'tex', 'latex', 'plaintex' },
  homepage = repo_url,
  license = 'LPPL-1.3'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = 'https://mirrors.ctan.org/install/macros/luatex/generic/luatexbase.tds.zip',
    dir = '.'
  }
end

build = {
  type = 'command',
  build_command = [[
    mkdir -p lua &&
      mv tex/luatex/luatexbase/luatexbase.loader.lua lua
  ]],
  copy_directories = { 'doc', 'tex' },
}
