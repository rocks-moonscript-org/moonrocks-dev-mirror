local git_ref = '67d9e23ca7aa22d9bce9d16c53d2c927dff5159a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/neomutt/tree-sitter-muttrc'

rockspec_format = '3.0'
package = 'tree-sitter-muttrc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for muttrc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/neomutt/tree-sitter-muttrc',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-muttrc-' .. '67d9e23ca7aa22d9bce9d16c53d2c927dff5159a',
}

build = {
  type = "treesitter-parser",
  lang = "muttrc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
