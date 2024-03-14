local git_ref = '09e158cd3650581c0af4c49c2e5b10c4834c8646'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/PRQL/tree-sitter-prql'

rockspec_format = '3.0'
package = 'tree-sitter-prql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for prql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/PRQL/tree-sitter-prql',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-prql-' .. '09e158cd3650581c0af4c49c2e5b10c4834c8646',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "prql",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
