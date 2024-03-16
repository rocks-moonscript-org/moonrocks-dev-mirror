local git_ref = '39da859947b94abdee43e431368e1ae975c0a424'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-perl/tree-sitter-pod'

rockspec_format = '3.0'
package = 'tree-sitter-pod'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pod',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-perl/tree-sitter-pod',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pod-' .. '39da859947b94abdee43e431368e1ae975c0a424',
}

build = {
  type = "treesitter-parser",
  lang = "pod",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
