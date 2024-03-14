local git_ref = 'debd26fed283d80456ebafa33a06957b0c52e451'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Philipp-M/tree-sitter-ungrammar'

rockspec_format = '3.0'
package = 'tree-sitter-ungrammar'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ungrammar',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Philipp-M/tree-sitter-ungrammar',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ungrammar-' .. 'debd26fed283d80456ebafa33a06957b0c52e451',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ungrammar",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
