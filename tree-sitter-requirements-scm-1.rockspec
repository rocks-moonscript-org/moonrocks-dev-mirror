local git_ref = 'v0.3.3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-requirements'

rockspec_format = '3.0'
package = 'tree-sitter-requirements'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for requirements',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-requirements',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-requirements-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "requirements",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
