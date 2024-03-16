local git_ref = '10737f5dc4d8e68c9667f11a6996688a1185755f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/tree-sitter-tmux'

rockspec_format = '3.0'
package = 'tree-sitter-tmux'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for tmux',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Freed-Wu/tree-sitter-tmux',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-tmux-' .. '10737f5dc4d8e68c9667f11a6996688a1185755f',
}

build = {
  type = "treesitter-parser",
  lang = "tmux",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
