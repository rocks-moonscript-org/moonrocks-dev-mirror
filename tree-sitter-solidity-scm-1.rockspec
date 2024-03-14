local git_ref = 'b239a95f94cfcc6e7b3e961bc73a28d55e214f02'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/JoranHonig/tree-sitter-solidity'

rockspec_format = '3.0'
package = 'tree-sitter-solidity'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for solidity',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/JoranHonig/tree-sitter-solidity',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-solidity-' .. 'b239a95f94cfcc6e7b3e961bc73a28d55e214f02',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "solidity",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
