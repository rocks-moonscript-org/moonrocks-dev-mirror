local git_ref = '0e0aceabbf607ea09e03562f5d8a56f048ddea3d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-printf'

rockspec_format = '3.0'
package = 'tree-sitter-printf'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for printf',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-printf',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-printf-' .. '0e0aceabbf607ea09e03562f5d8a56f048ddea3d',
}

build = {
  type = "treesitter-parser",
  lang = "printf",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
