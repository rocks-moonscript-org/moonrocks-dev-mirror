local git_ref = '8dacf02aa402892c91079f8577998ed5148c0496'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/PorterAtGoogle/tree-sitter-textproto'

rockspec_format = '3.0'
package = 'tree-sitter-textproto'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for textproto',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/PorterAtGoogle/tree-sitter-textproto',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-textproto-' .. '8dacf02aa402892c91079f8577998ed5148c0496',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "textproto",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
