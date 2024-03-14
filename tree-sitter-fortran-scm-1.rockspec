local git_ref = 'f73d473e3530862dee7cbb38520f28824e7804f6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stadelmanma/tree-sitter-fortran'

rockspec_format = '3.0'
package = 'tree-sitter-fortran'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fortran',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/stadelmanma/tree-sitter-fortran',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fortran-' .. 'f73d473e3530862dee7cbb38520f28824e7804f6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "fortran",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
