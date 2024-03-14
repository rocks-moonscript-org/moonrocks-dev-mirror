local git_ref = '3937c5cd105ec4127448651a21aef45f52d19609'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/arnarg/tree-sitter-todotxt'

rockspec_format = '3.0'
package = 'tree-sitter-todotxt'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for todotxt',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/arnarg/tree-sitter-todotxt',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-todotxt-' .. '3937c5cd105ec4127448651a21aef45f52d19609',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "todotxt",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
