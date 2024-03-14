local git_ref = '0a95cfdc0745b6ae82f60d3a339b37f19b7b9267'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/alemuller/tree-sitter-ninja'

rockspec_format = '3.0'
package = 'tree-sitter-ninja'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ninja',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alemuller/tree-sitter-ninja',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ninja-' .. '0a95cfdc0745b6ae82f60d3a339b37f19b7b9267',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ninja",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
