local git_ref = 'v0.19.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-go'

rockspec_format = '3.0'
package = 'tree-sitter-go'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for go',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-go',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-go-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "go",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}