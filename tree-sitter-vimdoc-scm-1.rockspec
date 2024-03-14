local git_ref = 'v2.0.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/neovim/tree-sitter-vimdoc'

rockspec_format = '3.0'
package = 'tree-sitter-vimdoc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for vimdoc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/neovim/tree-sitter-vimdoc',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-vimdoc-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "vimdoc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
