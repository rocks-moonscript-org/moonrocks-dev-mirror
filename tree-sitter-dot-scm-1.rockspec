local git_ref = '9ab85550c896d8b294d9b9ca1e30698736f08cea'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rydesun/tree-sitter-dot'

rockspec_format = '3.0'
package = 'tree-sitter-dot'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for dot',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/rydesun/tree-sitter-dot',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-dot-' .. '9ab85550c896d8b294d9b9ca1e30698736f08cea',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "dot",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
