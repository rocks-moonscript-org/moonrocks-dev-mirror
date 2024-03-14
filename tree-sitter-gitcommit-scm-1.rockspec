local git_ref = 'v0.3.3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/gbprod/tree-sitter-gitcommit'

rockspec_format = '3.0'
package = 'tree-sitter-gitcommit'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gitcommit',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/gbprod/tree-sitter-gitcommit',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gitcommit-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gitcommit",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
