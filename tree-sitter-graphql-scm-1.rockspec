local git_ref = '5e66e961eee421786bdda8495ed1db045e06b5fe'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/bkegley/tree-sitter-graphql'

rockspec_format = '3.0'
package = 'tree-sitter-graphql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for graphql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/bkegley/tree-sitter-graphql',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-graphql-' .. '5e66e961eee421786bdda8495ed1db045e06b5fe',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "graphql",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
