local git_ref = '5be34b0f6ea01b24f017c2c715729a3a919f57fd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tree-sitter-hlsplaylist'

rockspec_format = '3.0'
package = 'tree-sitter-hlsplaylist'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hlsplaylist',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Freed-Wu/tree-sitter-hlsplaylist',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hlsplaylist-' .. '5be34b0f6ea01b24f017c2c715729a3a919f57fd',
}

build = {
  type = "treesitter-parser",
  lang = "hlsplaylist",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
