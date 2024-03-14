local git_ref = '77625d78eebc3ffc44d114a07b2f348dff3061b0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/MichaHoffmann/tree-sitter-promql'

rockspec_format = '3.0'
package = 'tree-sitter-promql'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for promql',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/MichaHoffmann/tree-sitter-promql',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-promql-' .. '77625d78eebc3ffc44d114a07b2f348dff3061b0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "promql",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
