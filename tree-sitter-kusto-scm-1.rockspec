local git_ref = '8353a1296607d6ba33db7c7e312226e5fc83e8ce'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Willem-J-an/tree-sitter-kusto'

rockspec_format = '3.0'
package = 'tree-sitter-kusto'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for kusto',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Willem-J-an/tree-sitter-kusto',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-kusto-' .. '8353a1296607d6ba33db7c7e312226e5fc83e8ce',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "kusto",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
