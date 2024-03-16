local git_ref = 'a33d400f025d6bbd37b4c681c93054976f579890'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/gdamore/tree-sitter-d'

rockspec_format = '3.0'
package = 'tree-sitter-d'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for d',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/gdamore/tree-sitter-d',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-d-' .. 'a33d400f025d6bbd37b4c681c93054976f579890',
}

build = {
  type = "treesitter-parser",
  lang = "d",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
