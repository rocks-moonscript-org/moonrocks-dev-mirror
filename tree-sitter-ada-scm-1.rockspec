local git_ref = 'ba0894efa03beb70780156b91e28c716b7a4764d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/briot/tree-sitter-ada'

rockspec_format = '3.0'
package = 'tree-sitter-ada'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ada',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/briot/tree-sitter-ada',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ada-' .. 'ba0894efa03beb70780156b91e28c716b7a4764d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ada",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
