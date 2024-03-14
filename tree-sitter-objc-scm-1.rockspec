local git_ref = 'v2.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-objc'

rockspec_format = '3.0'
package = 'tree-sitter-objc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for objc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-objc',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-objc-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "objc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
