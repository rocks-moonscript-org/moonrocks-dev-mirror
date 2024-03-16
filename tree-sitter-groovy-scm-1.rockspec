local git_ref = '3c25d1ce6c1eb9da34215060372792dc9f439b0c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/murtaza64/tree-sitter-groovy'

rockspec_format = '3.0'
package = 'tree-sitter-groovy'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for groovy',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/murtaza64/tree-sitter-groovy',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-groovy-' .. '3c25d1ce6c1eb9da34215060372792dc9f439b0c',
}

build = {
  type = "treesitter-parser",
  lang = "groovy",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
