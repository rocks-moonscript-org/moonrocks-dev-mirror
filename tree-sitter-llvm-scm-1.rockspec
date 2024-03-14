local git_ref = '1b96e58faf558ce057d4dc664b904528aee743cb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/benwilliamgraham/tree-sitter-llvm'

rockspec_format = '3.0'
package = 'tree-sitter-llvm'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for llvm',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/benwilliamgraham/tree-sitter-llvm',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-llvm-' .. '1b96e58faf558ce057d4dc664b904528aee743cb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "llvm",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
