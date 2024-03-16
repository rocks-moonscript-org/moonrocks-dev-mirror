local git_ref = '14e6da1627aaef21d2b2aa0c37d04269766dcc1d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-nqc'

rockspec_format = '3.0'
package = 'tree-sitter-nqc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nqc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-nqc',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nqc-' .. '14e6da1627aaef21d2b2aa0c37d04269766dcc1d',
}

build = {
  type = "treesitter-parser",
  lang = "nqc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
