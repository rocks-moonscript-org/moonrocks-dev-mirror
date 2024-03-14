local git_ref = 'v1.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tlaplus-community/tree-sitter-tlaplus'

rockspec_format = '3.0'
package = 'tree-sitter-tlaplus'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for tlaplus',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tlaplus-community/tree-sitter-tlaplus',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-tlaplus-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "tlaplus",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
