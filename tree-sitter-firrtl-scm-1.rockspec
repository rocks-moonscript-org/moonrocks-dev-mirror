local git_ref = '2b5adae629c8cba528c7b1e4aa67a8ae28934ea5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/amaanq/tree-sitter-firrtl'

rockspec_format = '3.0'
package = 'tree-sitter-firrtl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for firrtl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/amaanq/tree-sitter-firrtl',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-firrtl-' .. '2b5adae629c8cba528c7b1e4aa67a8ae28934ea5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "firrtl",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
