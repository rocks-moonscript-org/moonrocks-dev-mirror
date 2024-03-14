local git_ref = 'fb062bfc7ca09a741820debb7cb8a75a557b30f9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/savonet/tree-sitter-liquidsoap'

rockspec_format = '3.0'
package = 'tree-sitter-liquidsoap'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for liquidsoap',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/savonet/tree-sitter-liquidsoap',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-liquidsoap-' .. 'fb062bfc7ca09a741820debb7cb8a75a557b30f9',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "liquidsoap",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
