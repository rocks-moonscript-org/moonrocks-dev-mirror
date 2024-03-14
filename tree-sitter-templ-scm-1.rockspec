local git_ref = '592faa3186ef857c92e4bd1c31d73c07a4a334db'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vrischmann/tree-sitter-templ'

rockspec_format = '3.0'
package = 'tree-sitter-templ'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for templ',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/vrischmann/tree-sitter-templ',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-templ-' .. '592faa3186ef857c92e4bd1c31d73c07a4a334db',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "templ",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
