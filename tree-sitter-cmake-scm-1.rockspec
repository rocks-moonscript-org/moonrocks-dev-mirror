local git_ref = 'v0.4.1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/uyha/tree-sitter-cmake'

rockspec_format = '3.0'
package = 'tree-sitter-cmake'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for cmake',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/uyha/tree-sitter-cmake',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-cmake-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "cmake",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
