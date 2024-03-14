local git_ref = '2c0e6be8dd4dcb961c345fa35c309ad4f5bd3502'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Hubro/tree-sitter-yang'

rockspec_format = '3.0'
package = 'tree-sitter-yang'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for yang',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Hubro/tree-sitter-yang',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-yang-' .. '2c0e6be8dd4dcb961c345fa35c309ad4f5bd3502',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "yang",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
