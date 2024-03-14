local git_ref = '20239395eacdc2e0923a7e5683ad3605aee7b716'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ath3/tree-sitter-passwd'

rockspec_format = '3.0'
package = 'tree-sitter-passwd'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for passwd',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ath3/tree-sitter-passwd',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-passwd-' .. '20239395eacdc2e0923a7e5683ad3605aee7b716',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "passwd",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
