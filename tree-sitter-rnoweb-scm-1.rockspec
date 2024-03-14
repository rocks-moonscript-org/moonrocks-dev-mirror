local git_ref = '502c1126dc6777f09af5bef16e72a42f75bd081e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/bamonroe/tree-sitter-rnoweb'

rockspec_format = '3.0'
package = 'tree-sitter-rnoweb'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for rnoweb',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/bamonroe/tree-sitter-rnoweb',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-rnoweb-' .. '502c1126dc6777f09af5bef16e72a42f75bd081e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "rnoweb",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
