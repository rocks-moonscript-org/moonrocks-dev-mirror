local git_ref = '3c3e5f8e0caeba6157e26a1bedf8321e1da62799'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/uben0/tree-sitter-typst'

rockspec_format = '3.0'
package = 'tree-sitter-typst'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for typst',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/uben0/tree-sitter-typst',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-typst-' .. '3c3e5f8e0caeba6157e26a1bedf8321e1da62799',
}

build = {
  type = "treesitter-parser",
  lang = "typst",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
