local git_ref = 'fca1e294f6dce8ec5659233a6a21f5bd0ed5b4f2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/slackhq/tree-sitter-hack'

rockspec_format = '3.0'
package = 'tree-sitter-hack'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hack',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/slackhq/tree-sitter-hack',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hack-' .. 'fca1e294f6dce8ec5659233a6a21f5bd0ed5b4f2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "hack",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
