local git_ref = '0.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/BonaBeavis/tree-sitter-sparql'

rockspec_format = '3.0'
package = 'tree-sitter-sparql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sparql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/BonaBeavis/tree-sitter-sparql',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sparql-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "sparql",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}