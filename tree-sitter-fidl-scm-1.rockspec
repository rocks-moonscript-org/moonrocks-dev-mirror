local git_ref = '0a8910f293268e27ff554357c229ba172b0eaed2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/google/tree-sitter-fidl'

rockspec_format = '3.0'
package = 'tree-sitter-fidl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fidl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/google/tree-sitter-fidl',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fidl-' .. '0a8910f293268e27ff554357c229ba172b0eaed2',
}

build = {
  type = "treesitter-parser",
  lang = "fidl",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
