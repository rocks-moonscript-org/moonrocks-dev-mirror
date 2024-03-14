local git_ref = '456dec2990ed7e9595eca82f85db14a1db46e126'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/traxys/tree-sitter-lalrpop'

rockspec_format = '3.0'
package = 'tree-sitter-lalrpop'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for lalrpop',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/traxys/tree-sitter-lalrpop',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-lalrpop-' .. '456dec2990ed7e9595eca82f85db14a1db46e126',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "lalrpop",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
