local git_ref = 'v0.1.1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/fab4100/tree-sitter-ispc'

rockspec_format = '3.0'
package = 'tree-sitter-ispc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ispc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/fab4100/tree-sitter-ispc',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ispc-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ispc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
