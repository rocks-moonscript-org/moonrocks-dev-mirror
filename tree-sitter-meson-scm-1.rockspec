local git_ref = '1.2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Decodetalkers/tree-sitter-meson'

rockspec_format = '3.0'
package = 'tree-sitter-meson'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for meson',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Decodetalkers/tree-sitter-meson',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-meson-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "meson",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
