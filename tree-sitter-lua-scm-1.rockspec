local git_ref = 'v0.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/MunifTanjim/tree-sitter-lua'

rockspec_format = '3.0'
package = 'tree-sitter-lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for lua',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/MunifTanjim/tree-sitter-lua',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-lua-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "lua",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}