local git_ref = '6c665e7cf15d76a1687959643868a78fb381458d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/polarmutex/tree-sitter-beancount'

rockspec_format = '3.0'
package = 'tree-sitter-beancount'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for beancount',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/polarmutex/tree-sitter-beancount',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-beancount-' .. '6c665e7cf15d76a1687959643868a78fb381458d',
}

build = {
  type = "treesitter-parser",
  lang = "beancount",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
