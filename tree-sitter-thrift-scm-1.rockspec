local git_ref = 'v0.2.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/duskmoon314/tree-sitter-thrift'

rockspec_format = '3.0'
package = 'tree-sitter-thrift'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for thrift',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/duskmoon314/tree-sitter-thrift',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-thrift-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "thrift",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}