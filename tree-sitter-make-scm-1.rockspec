local git_ref = 'a4b9187417d6be349ee5fd4b6e77b4172c6827dd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/alemuller/tree-sitter-make'

rockspec_format = '3.0'
package = 'tree-sitter-make'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for make',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alemuller/tree-sitter-make',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-make-' .. 'a4b9187417d6be349ee5fd4b6e77b4172c6827dd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "make",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
