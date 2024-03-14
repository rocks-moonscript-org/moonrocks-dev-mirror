local git_ref = 'd819cdd5dbe455bd3c859193633c8d91c0df7c36'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/sigmaSd/tree-sitter-strace'

rockspec_format = '3.0'
package = 'tree-sitter-strace'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for strace',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sigmaSd/tree-sitter-strace',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-strace-' .. 'd819cdd5dbe455bd3c859193633c8d91c0df7c36',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "strace",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
