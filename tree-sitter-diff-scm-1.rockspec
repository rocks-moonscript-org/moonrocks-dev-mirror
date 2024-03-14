local git_ref = 'c165725c28e69b36c5799ff0e458713a844f1aaf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/the-mikedavis/tree-sitter-diff'

rockspec_format = '3.0'
package = 'tree-sitter-diff'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for diff',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/the-mikedavis/tree-sitter-diff',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-diff-' .. 'c165725c28e69b36c5799ff0e458713a844f1aaf',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "diff",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
