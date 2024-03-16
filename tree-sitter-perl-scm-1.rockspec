local git_ref = '6526e5d5bf31501de0dc51c42ac3583078a8fdab'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-perl/tree-sitter-perl'

rockspec_format = '3.0'
package = 'tree-sitter-perl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for perl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-perl/tree-sitter-perl',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-perl-' .. '6526e5d5bf31501de0dc51c42ac3583078a8fdab',
}

build = {
  type = "treesitter-parser",
  lang = "perl",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
