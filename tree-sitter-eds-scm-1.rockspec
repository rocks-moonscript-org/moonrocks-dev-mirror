local git_ref = 'fde62029d4c715562230070b9af51a9500c2ce10'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/uyha/tree-sitter-eds'

rockspec_format = '3.0'
package = 'tree-sitter-eds'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for eds',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/uyha/tree-sitter-eds',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-eds-' .. 'fde62029d4c715562230070b9af51a9500c2ce10',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "eds",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
