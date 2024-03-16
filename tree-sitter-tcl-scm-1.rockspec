local git_ref = '56ad1fa6a34ba800e5495d1025a9b0fda338d5b8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-tcl'

rockspec_format = '3.0'
package = 'tree-sitter-tcl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for tcl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-tcl',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-tcl-' .. '56ad1fa6a34ba800e5495d1025a9b0fda338d5b8',
}

build = {
  type = "treesitter-parser",
  lang = "tcl",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
