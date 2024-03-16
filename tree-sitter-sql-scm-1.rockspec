local git_ref = 'cdb7cde9bf70b194ab8beb5069fbbc3c9640284e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/derekstride/tree-sitter-sql'

rockspec_format = '3.0'
package = 'tree-sitter-sql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/derekstride/tree-sitter-sql',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sql-' .. 'cdb7cde9bf70b194ab8beb5069fbbc3c9640284e',
}

build = {
  type = "treesitter-parser",
  lang = "sql",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
