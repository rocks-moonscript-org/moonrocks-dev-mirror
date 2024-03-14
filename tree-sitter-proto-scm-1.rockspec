local git_ref = 'e9f6b43f6844bd2189b50a422d4e2094313f6aa3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/treywood/tree-sitter-proto'

rockspec_format = '3.0'
package = 'tree-sitter-proto'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for proto',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/treywood/tree-sitter-proto',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-proto-' .. 'e9f6b43f6844bd2189b50a422d4e2094313f6aa3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "proto",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
