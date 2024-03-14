local git_ref = '3bc691d2cfba44bea339a775ad496c8bc552c60d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/naclsn/tree-sitter-nasm'

rockspec_format = '3.0'
package = 'tree-sitter-nasm'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nasm',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/naclsn/tree-sitter-nasm',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nasm-' .. '3bc691d2cfba44bea339a775ad496c8bc552c60d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "nasm",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
