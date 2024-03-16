local git_ref = 'e436eaef452266a3d00c195f0eb757d6502c767a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ribru17/tree-sitter-readline'

rockspec_format = '3.0'
package = 'tree-sitter-readline'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for readline',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ribru17/tree-sitter-readline',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-readline-' .. 'e436eaef452266a3d00c195f0eb757d6502c767a',
}

build = {
  type = "treesitter-parser",
  lang = "readline",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
