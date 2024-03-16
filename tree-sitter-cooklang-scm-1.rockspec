local git_ref = '81c2a8667846b1e60db68b5601d864fe00fd1d3a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/addcninblue/tree-sitter-cooklang'

rockspec_format = '3.0'
package = 'tree-sitter-cooklang'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for cooklang',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/addcninblue/tree-sitter-cooklang',
  license = 'Apache-2.0'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-cooklang-' .. '81c2a8667846b1e60db68b5601d864fe00fd1d3a',
}

build = {
  type = "treesitter-parser",
  lang = "cooklang",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
