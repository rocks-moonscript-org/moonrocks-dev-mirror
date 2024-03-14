local git_ref = 'v0.21.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-bash'

rockspec_format = '3.0'
package = 'tree-sitter-bash'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for bash',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-bash',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-bash-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "bash",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
