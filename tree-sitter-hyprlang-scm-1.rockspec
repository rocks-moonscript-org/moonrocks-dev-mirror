local git_ref = 'fc1d331586e4da2b5f5bcfa89d630ebafe66458b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/luckasRanarison/tree-sitter-hyprlang'

rockspec_format = '3.0'
package = 'tree-sitter-hyprlang'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hyprlang',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/luckasRanarison/tree-sitter-hyprlang',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hyprlang-' .. 'fc1d331586e4da2b5f5bcfa89d630ebafe66458b',
}

build = {
  type = "treesitter-parser",
  lang = "hyprlang",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
