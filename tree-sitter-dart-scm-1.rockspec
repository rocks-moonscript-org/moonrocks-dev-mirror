local git_ref = '1a31399a08aefc93bc4cdbfadc0cb619136f86c1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/UserNobody14/tree-sitter-dart'

rockspec_format = '3.0'
package = 'tree-sitter-dart'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for dart',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/UserNobody14/tree-sitter-dart',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-dart-' .. '1a31399a08aefc93bc4cdbfadc0cb619136f86c1',
}

build = {
  type = "treesitter-parser",
  lang = "dart",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
