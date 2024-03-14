local git_ref = 'v1.0.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/serenadeai/tree-sitter-scss'

rockspec_format = '3.0'
package = 'tree-sitter-scss'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for scss',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/serenadeai/tree-sitter-scss',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-scss-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "scss",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
