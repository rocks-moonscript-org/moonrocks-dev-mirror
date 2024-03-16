local git_ref = '17144a77be0acdecebd9d557398883569fed41de'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ngalaiko/tree-sitter-go-template'

rockspec_format = '3.0'
package = 'tree-sitter-gotmpl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gotmpl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ngalaiko/tree-sitter-go-template',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-go-template-' .. '17144a77be0acdecebd9d557398883569fed41de',
}

build = {
  type = "treesitter-parser",
  lang = "gotmpl",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
