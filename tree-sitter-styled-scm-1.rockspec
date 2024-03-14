local git_ref = '5e52758b32e02adca16bb93f95b3f9c050c72b56'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mskelton/tree-sitter-styled'

rockspec_format = '3.0'
package = 'tree-sitter-styled'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for styled',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/mskelton/tree-sitter-styled',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-styled-' .. '5e52758b32e02adca16bb93f95b3f9c050c72b56',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "styled",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
