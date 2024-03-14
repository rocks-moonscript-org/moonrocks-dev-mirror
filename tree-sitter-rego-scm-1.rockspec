local git_ref = '9ac75e71b2d791e0aadeef68098319d86a2a14cf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/FallenAngel97/tree-sitter-rego'

rockspec_format = '3.0'
package = 'tree-sitter-rego'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for rego',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/FallenAngel97/tree-sitter-rego',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-rego-' .. '9ac75e71b2d791e0aadeef68098319d86a2a14cf',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "rego",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
