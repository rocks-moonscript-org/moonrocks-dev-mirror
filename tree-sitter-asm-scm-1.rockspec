local git_ref = '6ace266be7ad6bf486a95427ca3fc949aff66211'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/RubixDev/tree-sitter-asm'

rockspec_format = '3.0'
package = 'tree-sitter-asm'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for asm',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/RubixDev/tree-sitter-asm',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-asm-' .. '6ace266be7ad6bf486a95427ca3fc949aff66211',
}

build = {
  type = "treesitter-parser",
  lang = "asm",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
