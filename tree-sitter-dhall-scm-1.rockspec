local git_ref = 'affb6ee38d629c9296749767ab832d69bb0d9ea8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbellerb/tree-sitter-dhall'

rockspec_format = '3.0'
package = 'tree-sitter-dhall'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for dhall',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/jbellerb/tree-sitter-dhall',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-dhall-' .. 'affb6ee38d629c9296749767ab832d69bb0d9ea8',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "dhall",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
