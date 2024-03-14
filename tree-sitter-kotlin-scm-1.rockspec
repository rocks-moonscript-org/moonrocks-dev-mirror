local git_ref = '0.2.3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/fwcd/tree-sitter-kotlin'

rockspec_format = '3.0'
package = 'tree-sitter-kotlin'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for kotlin',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/fwcd/tree-sitter-kotlin',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-kotlin-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "kotlin",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
