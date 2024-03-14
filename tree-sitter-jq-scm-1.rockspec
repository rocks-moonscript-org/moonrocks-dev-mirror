local git_ref = '13990f530e8e6709b7978503da9bc8701d366791'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/flurie/tree-sitter-jq'

rockspec_format = '3.0'
package = 'tree-sitter-jq'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for jq',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/flurie/tree-sitter-jq',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-jq-' .. '13990f530e8e6709b7978503da9bc8701d366791',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "jq",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
