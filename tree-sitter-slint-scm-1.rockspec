local git_ref = '00c8a2d3645766f68c0d0460086c0a994e5b0d85'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jrmoulton/tree-sitter-slint'

rockspec_format = '3.0'
package = 'tree-sitter-slint'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for slint',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/jrmoulton/tree-sitter-slint',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-slint-' .. '00c8a2d3645766f68c0d0460086c0a994e5b0d85',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "slint",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
