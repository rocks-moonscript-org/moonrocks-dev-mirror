local git_ref = '2383cc69a2c42cfade41c7cb971fb3862bec6df1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-xcompose'

rockspec_format = '3.0'
package = 'tree-sitter-xcompose'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for xcompose',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-xcompose',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-xcompose-' .. '2383cc69a2c42cfade41c7cb971fb3862bec6df1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "xcompose",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
