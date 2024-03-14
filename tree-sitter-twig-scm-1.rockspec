local git_ref = 'v1.0.2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/gbprod/tree-sitter-twig'

rockspec_format = '3.0'
package = 'tree-sitter-twig'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for twig',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/gbprod/tree-sitter-twig',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-twig-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "twig",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
