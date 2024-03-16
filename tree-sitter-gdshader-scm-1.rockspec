local git_ref = 'ffd9f958df13cae04593781d7d2562295a872455'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/GodOfAvacyn/tree-sitter-gdshader'

rockspec_format = '3.0'
package = 'tree-sitter-gdshader'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gdshader',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/GodOfAvacyn/tree-sitter-gdshader',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gdshader-' .. 'ffd9f958df13cae04593781d7d2562295a872455',
}

build = {
  type = "treesitter-parser",
  lang = "gdshader",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
