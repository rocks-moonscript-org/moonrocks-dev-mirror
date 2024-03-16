local git_ref = 'dfa0893bdc4bdfada102043404758c66e3580568'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/virchau13/tree-sitter-astro'

rockspec_format = '3.0'
package = 'tree-sitter-astro'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for astro',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/virchau13/tree-sitter-astro',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-astro-' .. 'dfa0893bdc4bdfada102043404758c66e3580568',
}

build = {
  type = "treesitter-parser",
  lang = "astro",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
