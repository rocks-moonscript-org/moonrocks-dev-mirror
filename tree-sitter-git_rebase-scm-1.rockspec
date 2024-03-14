local git_ref = 'd8a4207ebbc47bd78bacdf48f883db58283f9fd8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/the-mikedavis/tree-sitter-git-rebase'

rockspec_format = '3.0'
package = 'tree-sitter-git_rebase'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for git_rebase',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/the-mikedavis/tree-sitter-git-rebase',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-git-rebase-' .. 'd8a4207ebbc47bd78bacdf48f883db58283f9fd8',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "git_rebase",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
