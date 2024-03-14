local git_ref = 'c390f10519ae69fdb03b3e5764f5592fb6924bcc'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/antosha417/tree-sitter-hocon'

rockspec_format = '3.0'
package = 'tree-sitter-hocon'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for hocon',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/antosha417/tree-sitter-hocon',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-hocon-' .. 'c390f10519ae69fdb03b3e5764f5592fb6924bcc',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "hocon",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
