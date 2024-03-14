local git_ref = 'd34615fa12cc1d1cfc1f1f1a80acc9db80ee4596'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/sourcegraph/tree-sitter-jsonnet'

rockspec_format = '3.0'
package = 'tree-sitter-jsonnet'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for jsonnet',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sourcegraph/tree-sitter-jsonnet',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-jsonnet-' .. 'd34615fa12cc1d1cfc1f1f1a80acc9db80ee4596',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "jsonnet",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
