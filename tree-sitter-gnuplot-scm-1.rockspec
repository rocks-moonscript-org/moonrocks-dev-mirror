local git_ref = '7549f6faf5cc9fb8cf78054a7af356a6b003c6f3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/dpezto/tree-sitter-gnuplot'

rockspec_format = '3.0'
package = 'tree-sitter-gnuplot'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gnuplot',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/dpezto/tree-sitter-gnuplot',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gnuplot-' .. '7549f6faf5cc9fb8cf78054a7af356a6b003c6f3',
}

build = {
  type = "treesitter-parser",
  lang = "gnuplot",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}