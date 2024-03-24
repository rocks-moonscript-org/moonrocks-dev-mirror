local git_ref = 'v0.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stsewd/tree-sitter-rst'

rockspec_format = '3.0'
package = 'tree-sitter-rst'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for rst',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/stsewd/tree-sitter-rst',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-rst-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "rst",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}