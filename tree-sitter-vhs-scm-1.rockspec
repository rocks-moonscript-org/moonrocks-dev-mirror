local git_ref = '9534865e614c95eb9418e5e73f061c32fa4d9540'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/charmbracelet/tree-sitter-vhs'

rockspec_format = '3.0'
package = 'tree-sitter-vhs'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for vhs',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/charmbracelet/tree-sitter-vhs',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-vhs-' .. '9534865e614c95eb9418e5e73f061c32fa4d9540',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "vhs",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
