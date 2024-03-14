local git_ref = 'v0.1.6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-gitattributes'

rockspec_format = '3.0'
package = 'tree-sitter-gitattributes'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gitattributes',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-gitattributes',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gitattributes-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gitattributes",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
