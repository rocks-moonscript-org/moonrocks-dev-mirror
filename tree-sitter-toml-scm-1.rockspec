local git_ref = 'v0.2.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ikatyang/tree-sitter-toml'

rockspec_format = '3.0'
package = 'tree-sitter-toml'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for toml',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ikatyang/tree-sitter-toml',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-toml-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "toml",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
