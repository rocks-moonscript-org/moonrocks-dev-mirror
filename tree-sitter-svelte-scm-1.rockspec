local git_ref = 'v0.9.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Himujjal/tree-sitter-svelte'

rockspec_format = '3.0'
package = 'tree-sitter-svelte'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for svelte',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Himujjal/tree-sitter-svelte',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-svelte-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "svelte",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
