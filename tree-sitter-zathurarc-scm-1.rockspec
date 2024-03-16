local git_ref = '353bdf25e7af9c2830e254977fd3fb57ccaa8203'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tree-sitter-zathurarc'

rockspec_format = '3.0'
package = 'tree-sitter-zathurarc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for zathurarc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Freed-Wu/tree-sitter-zathurarc',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-zathurarc-' .. '353bdf25e7af9c2830e254977fd3fb57ccaa8203',
}

build = {
  type = "treesitter-parser",
  lang = "zathurarc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
