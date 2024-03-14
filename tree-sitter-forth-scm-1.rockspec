local git_ref = '90189238385cf636b9ee99ce548b9e5b5e569d48'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/AlexanderBrevig/tree-sitter-forth'

rockspec_format = '3.0'
package = 'tree-sitter-forth'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for forth',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/AlexanderBrevig/tree-sitter-forth',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-forth-' .. '90189238385cf636b9ee99ce548b9e5b5e569d48',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "forth",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
