local git_ref = 'v0.1.2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/camdencheek/tree-sitter-dockerfile'

rockspec_format = '3.0'
package = 'tree-sitter-dockerfile'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for dockerfile',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/camdencheek/tree-sitter-dockerfile',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-dockerfile-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "dockerfile",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
