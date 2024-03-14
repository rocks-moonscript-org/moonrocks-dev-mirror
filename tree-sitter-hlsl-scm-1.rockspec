local git_ref = 'v0.1.2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/tree-sitter-hlsl'

rockspec_format = '3.0'
package = 'tree-sitter-hlsl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hlsl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/theHamsta/tree-sitter-hlsl',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hlsl-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "hlsl",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
