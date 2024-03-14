local git_ref = 'v0.4.1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/tree-sitter-usd'

rockspec_format = '3.0'
package = 'tree-sitter-usd'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for usd',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ColinKennedy/tree-sitter-usd',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-usd-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "usd",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
