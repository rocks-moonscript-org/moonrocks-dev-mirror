local git_ref = 'a7ff31a38908df9b9f34828d21d6ca5e12413e18'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/zealot128/tree-sitter-pug'

rockspec_format = '3.0'
package = 'tree-sitter-pug'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pug',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/zealot128/tree-sitter-pug',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pug-' .. 'a7ff31a38908df9b9f34828d21d6ca5e12413e18',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "pug",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
