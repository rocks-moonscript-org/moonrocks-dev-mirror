local git_ref = 'c23f7a9b1ee7d45f516496b1e0e4be067264fa0d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Joakker/tree-sitter-json5'

rockspec_format = '3.0'
package = 'tree-sitter-json5'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for json5',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Joakker/tree-sitter-json5',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-json5-' .. 'c23f7a9b1ee7d45f516496b1e0e4be067264fa0d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "json5",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
