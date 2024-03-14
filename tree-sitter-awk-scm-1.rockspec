local git_ref = 'v0.5.2-abi13'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Beaglefoot/tree-sitter-awk'

rockspec_format = '3.0'
package = 'tree-sitter-awk'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for awk',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Beaglefoot/tree-sitter-awk',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-awk-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "awk",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
