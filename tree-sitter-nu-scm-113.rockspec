local git_ref = 'd694570aa26b53d0d642460a0430e8aa07dcbea0'
local modrev = 'scm'
local specrev = '113'

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
  'luarocks-build-treesitter-parser >= 6.0.2',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nu-' .. 'd694570aa26b53d0d642460a0430e8aa07dcbea0',
}

build = {
  type = "treesitter-parser",
  lang = "nu",
  parser = true,
  copy_directories = { 
    "queries",
  },
}
