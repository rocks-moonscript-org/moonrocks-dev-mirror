local git_ref = 'v0.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Fymyte/tree-sitter-rasi'

rockspec_format = '3.0'
package = 'tree-sitter-rasi'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for rasi',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Fymyte/tree-sitter-rasi',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-rasi-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "rasi",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}