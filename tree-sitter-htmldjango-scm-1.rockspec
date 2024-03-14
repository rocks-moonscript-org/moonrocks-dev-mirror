local git_ref = '8873e3df89f9ea1d33f6235e516b600009288557'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/interdependence/tree-sitter-htmldjango'

rockspec_format = '3.0'
package = 'tree-sitter-htmldjango'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for htmldjango',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/interdependence/tree-sitter-htmldjango',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-htmldjango-' .. '8873e3df89f9ea1d33f6235e516b600009288557',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "htmldjango",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
