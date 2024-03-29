local git_ref = 'v0.2.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/postsolar/tree-sitter-purescript'

rockspec_format = '3.0'
package = 'tree-sitter-purescript'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for purescript',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/postsolar/tree-sitter-purescript',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-purescript-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "treesitter-parser",
  lang = "purescript",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
