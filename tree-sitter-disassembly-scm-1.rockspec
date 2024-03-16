local git_ref = '0229c0211dba909c5d45129ac784a3f4d49c243a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ColinKennedy/tree-sitter-disassembly'

rockspec_format = '3.0'
package = 'tree-sitter-disassembly'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for disassembly',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ColinKennedy/tree-sitter-disassembly',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-disassembly-' .. '0229c0211dba909c5d45129ac784a3f4d49c243a',
}

build = {
  type = "treesitter-parser",
  lang = "disassembly",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
