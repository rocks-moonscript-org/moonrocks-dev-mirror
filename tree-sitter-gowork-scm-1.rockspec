local git_ref = '949a8a470559543857a62102c84700d291fc984c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/omertuc/tree-sitter-go-work'

rockspec_format = '3.0'
package = 'tree-sitter-gowork'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gowork',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/omertuc/tree-sitter-go-work',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-go-work-' .. '949a8a470559543857a62102c84700d291fc984c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gowork",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
