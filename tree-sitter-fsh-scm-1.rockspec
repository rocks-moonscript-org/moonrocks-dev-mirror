local git_ref = 'fa3347712f7a59ed02ccf508284554689c6cde28'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mgramigna/tree-sitter-fsh'

rockspec_format = '3.0'
package = 'tree-sitter-fsh'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fsh',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/mgramigna/tree-sitter-fsh',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fsh-' .. 'fa3347712f7a59ed02ccf508284554689c6cde28',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "fsh",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
