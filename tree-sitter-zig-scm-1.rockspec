local git_ref = '0d08703e4c3f426ec61695d7617415fff97029bd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/maxxnino/tree-sitter-zig'

rockspec_format = '3.0'
package = 'tree-sitter-zig'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for zig',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/maxxnino/tree-sitter-zig',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-zig-' .. '0d08703e4c3f426ec61695d7617415fff97029bd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "zig",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
