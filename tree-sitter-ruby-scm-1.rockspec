local git_ref = '9d86f3761bb30e8dcc81e754b81d3ce91848477e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-ruby'

rockspec_format = '3.0'
package = 'tree-sitter-ruby'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ruby',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-ruby',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ruby-' .. '9d86f3761bb30e8dcc81e754b81d3ce91848477e',
}

build = {
  type = "treesitter-parser",
  lang = "ruby",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
