local git_ref = '763168fa916a333a459434f1424b5d30645f015d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/cstrahan/tree-sitter-nix'

rockspec_format = '3.0'
package = 'tree-sitter-nix'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nix',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/cstrahan/tree-sitter-nix',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nix-' .. '763168fa916a333a459434f1424b5d30645f015d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "nix",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
