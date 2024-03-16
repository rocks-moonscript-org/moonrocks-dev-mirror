local git_ref = 'c23bd31d0aa72bfc01238b2546d5e823d8006709'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-xml'

rockspec_format = '3.0'
package = 'tree-sitter-xml'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for xml',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-xml',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-xml-' .. 'c23bd31d0aa72bfc01238b2546d5e823d8006709',
}

build = {
  type = "treesitter-parser",
  lang = "xml",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "xml",
}
