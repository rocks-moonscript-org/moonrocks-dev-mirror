local git_ref = '440d5f913d9465c9c776a1bd92334d32febcf065'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/RaafatTurki/tree-sitter-sxhkdrc'

rockspec_format = '3.0'
package = 'tree-sitter-sxhkdrc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for sxhkdrc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/RaafatTurki/tree-sitter-sxhkdrc',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-sxhkdrc-' .. '440d5f913d9465c9c776a1bd92334d32febcf065',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "sxhkdrc",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
