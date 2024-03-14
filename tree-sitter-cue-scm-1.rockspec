local git_ref = '8a5f273bfa281c66354da562f2307c2d394b6c81'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/eonpatapon/tree-sitter-cue'

rockspec_format = '3.0'
package = 'tree-sitter-cue'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for cue',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/eonpatapon/tree-sitter-cue',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-cue-' .. '8a5f273bfa281c66354da562f2307c2d394b6c81',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "cue",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
