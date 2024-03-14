local git_ref = 'v0.1.1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/RubixDev/ebnf'

rockspec_format = '3.0'
package = 'tree-sitter-ebnf'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ebnf',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/RubixDev/ebnf',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ebnf-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ebnf",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "crates/tree-sitter-ebnf",
}
