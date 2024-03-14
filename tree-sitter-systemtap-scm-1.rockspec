local git_ref = '1af543a96d060b1f808982037bfc54cc02218edd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ok-ryoko/tree-sitter-systemtap'

rockspec_format = '3.0'
package = 'tree-sitter-systemtap'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for systemtap',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ok-ryoko/tree-sitter-systemtap',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-systemtap-' .. '1af543a96d060b1f808982037bfc54cc02218edd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "systemtap",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
