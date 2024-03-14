local git_ref = '577259b4068b2c281c9ebf94c109bd50a74d5857'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/MercuryTechnologies/tree-sitter-haskell-persistent'

rockspec_format = '3.0'
package = 'tree-sitter-haskell_persistent'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for haskell_persistent',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/MercuryTechnologies/tree-sitter-haskell-persistent',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-haskell-persistent-' .. '577259b4068b2c281c9ebf94c109bd50a74d5857',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "haskell_persistent",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
