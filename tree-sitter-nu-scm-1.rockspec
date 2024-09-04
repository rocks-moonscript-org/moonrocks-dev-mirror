local git_ref = '0bb9a602d9bc94b66fab96ce51d46a5a227ab76c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nushell/tree-sitter-nu'

rockspec_format = '3.0'
package = 'tree-sitter-nu'
version = modrev ..'-'.. specrev

description = {
  summary = 'A tree-sitter grammar for nu-lang, the language of nushell',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nushell/tree-sitter-nu',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nu-' .. '0bb9a602d9bc94b66fab96ce51d46a5a227ab76c',
}

build = {
  type = "treesitter-parser",
  lang = "nu",
  parser = true,
  copy_directories = { 
    "queries",
  },
}
