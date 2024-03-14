local git_ref = 'v0.6.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/connorlay/tree-sitter-heex'

rockspec_format = '3.0'
package = 'tree-sitter-heex'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for heex',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/connorlay/tree-sitter-heex',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-heex-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "heex",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
