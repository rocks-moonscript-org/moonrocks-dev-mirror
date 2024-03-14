local git_ref = '8a841fb20ce683bfbb3469e6ba67f2851cfdf94a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/cbarrete/tree-sitter-ledger'

rockspec_format = '3.0'
package = 'tree-sitter-ledger'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ledger',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/cbarrete/tree-sitter-ledger',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ledger-' .. '8a841fb20ce683bfbb3469e6ba67f2851cfdf94a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ledger",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
