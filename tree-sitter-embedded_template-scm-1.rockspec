local git_ref = 'v0.20.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-embedded-template'

rockspec_format = '3.0'
package = 'tree-sitter-embedded_template'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for embedded_template',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-embedded-template',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-embedded-template-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "embedded_template",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
