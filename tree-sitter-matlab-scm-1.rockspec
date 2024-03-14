local git_ref = '79d8b25f57b48f83ae1333aff6723b83c9532e37'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/acristoffers/tree-sitter-matlab'

rockspec_format = '3.0'
package = 'tree-sitter-matlab'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for matlab',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/acristoffers/tree-sitter-matlab',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-matlab-' .. '79d8b25f57b48f83ae1333aff6723b83c9532e37',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "matlab",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
