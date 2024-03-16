local git_ref = 'ad414fa5497328e96ef992d80896f19c77584f7c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-php'

rockspec_format = '3.0'
package = 'tree-sitter-php_only'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for php_only',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-php',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-php-' .. 'ad414fa5497328e96ef992d80896f19c77584f7c',
}

build = {
  type = "treesitter-parser",
  lang = "php_only",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "php_only",
}
