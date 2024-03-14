local git_ref = '0.1.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/WhatsApp/tree-sitter-erlang'

rockspec_format = '3.0'
package = 'tree-sitter-erlang'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for erlang',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/WhatsApp/tree-sitter-erlang',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-erlang-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "erlang",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
