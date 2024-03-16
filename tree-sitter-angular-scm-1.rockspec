local git_ref = '62179d7bbfb5fd8a8f7298495ac654d252a1bd52'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/dlvandenberg/tree-sitter-angular'

rockspec_format = '3.0'
package = 'tree-sitter-angular'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for angular',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/dlvandenberg/tree-sitter-angular',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-angular-' .. '62179d7bbfb5fd8a8f7298495ac654d252a1bd52',
}

build = {
  type = "treesitter-parser",
  lang = "angular",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
