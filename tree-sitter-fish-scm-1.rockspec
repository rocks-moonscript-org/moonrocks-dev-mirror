local git_ref = 'f9176908c9eb2e11eb684d79e1d00f3b29bd65c9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ram02z/tree-sitter-fish'

rockspec_format = '3.0'
package = 'tree-sitter-fish'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fish',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ram02z/tree-sitter-fish',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fish-' .. 'f9176908c9eb2e11eb684d79e1d00f3b29bd65c9',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "fish",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
