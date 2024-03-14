local git_ref = '1dec7e1af96c56924e3322cd85fdce15d0a31d00'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mleonidas/tree-sitter-authzed'

rockspec_format = '3.0'
package = 'tree-sitter-authzed'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for authzed',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/mleonidas/tree-sitter-authzed',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-authzed-' .. '1dec7e1af96c56924e3322cd85fdce15d0a31d00',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "authzed",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
