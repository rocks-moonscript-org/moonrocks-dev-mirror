local git_ref = '02fa3b79b3ff9a296066da6277adfc3f26cbc9e0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/winston0410/tree-sitter-hjson'

rockspec_format = '3.0'
package = 'tree-sitter-hjson'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hjson',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/winston0410/tree-sitter-hjson',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hjson-' .. '02fa3b79b3ff9a296066da6277adfc3f26cbc9e0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "hjson",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
