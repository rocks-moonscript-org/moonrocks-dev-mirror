local git_ref = '014073fe8016d1ac440c51d22c77e3765d8f6855'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/tree-sitter-norg'

rockspec_format = '3.0'
package = 'tree-sitter-norg'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for norg',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorg/tree-sitter-norg',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-norg-' .. '014073fe8016d1ac440c51d22c77e3765d8f6855',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "norg",
  sources = { "src/parser.c", "src/scanner.cc" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
