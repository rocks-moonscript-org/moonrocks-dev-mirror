local git_ref = 'f3b9274514b5f9bf6b0dd4a01c30f9cc15c58bc4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/khiner/tree-sitter-faust'

rockspec_format = '3.0'
package = 'tree-sitter-faust'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for faust',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/khiner/tree-sitter-faust',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-faust-' .. 'f3b9274514b5f9bf6b0dd4a01c30f9cc15c58bc4',
}

build = {
  type = "treesitter-parser",
  lang = "faust",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
