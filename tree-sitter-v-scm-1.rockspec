local git_ref = 'v0.0.1-beta.1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/v-analyzer/v-analyzer'

rockspec_format = '3.0'
package = 'tree-sitter-v'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for v',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/v-analyzer/v-analyzer',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'v-analyzer-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "v",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = "tree_sitter_v",
}
