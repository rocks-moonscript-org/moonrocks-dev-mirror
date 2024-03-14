local git_ref = 'v0.4.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Kerl13/tree-sitter-menhir'

rockspec_format = '3.0'
package = 'tree-sitter-menhir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for menhir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Kerl13/tree-sitter-menhir',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-menhir-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "menhir",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
