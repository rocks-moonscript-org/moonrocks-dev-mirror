local git_ref = '3ca89fdf998340a7973e276b39516d8902950f86'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nilshelmig/tree-sitter-sourcepawn'

rockspec_format = '3.0'
package = 'tree-sitter-sourcepawn'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sourcepawn',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nilshelmig/tree-sitter-sourcepawn',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sourcepawn-' .. '3ca89fdf998340a7973e276b39516d8902950f86',
}

build = {
  type = "treesitter-parser",
  lang = "sourcepawn",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
