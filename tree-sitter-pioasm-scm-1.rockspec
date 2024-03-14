local git_ref = '924aadaf5dea2a6074d72027b064f939acf32e20'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/leo60228/tree-sitter-pioasm'

rockspec_format = '3.0'
package = 'tree-sitter-pioasm'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pioasm',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/leo60228/tree-sitter-pioasm',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pioasm-' .. '924aadaf5dea2a6074d72027b064f939acf32e20',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "pioasm",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
