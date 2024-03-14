local git_ref = 'v1.5.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-capnp'

rockspec_format = '3.0'
package = 'tree-sitter-capnp'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for capnp',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-capnp',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-capnp-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "capnp",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
