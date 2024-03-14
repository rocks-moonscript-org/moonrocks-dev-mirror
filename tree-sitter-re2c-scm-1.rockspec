local git_ref = '47aa19cf5f7aba2ed30e2b377f7172df76e819a6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-re2c'

rockspec_format = '3.0'
package = 'tree-sitter-re2c'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for re2c',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-re2c',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-re2c-' .. '47aa19cf5f7aba2ed30e2b377f7172df76e819a6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "re2c",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
