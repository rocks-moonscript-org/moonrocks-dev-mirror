local git_ref = 'f285e338d328a03920a9bfd8dda78585c7ddcca3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/claytonrcarter/tree-sitter-phpdoc'

rockspec_format = '3.0'
package = 'tree-sitter-phpdoc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for phpdoc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/claytonrcarter/tree-sitter-phpdoc',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-phpdoc-' .. 'f285e338d328a03920a9bfd8dda78585c7ddcca3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "phpdoc",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
