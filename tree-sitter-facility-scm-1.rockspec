local git_ref = 'a52579670e2b14ec03d410c3c980fafaf6d659c4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/FacilityApi/tree-sitter-facility'

rockspec_format = '3.0'
package = 'tree-sitter-facility'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for facility',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/FacilityApi/tree-sitter-facility',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-facility-' .. 'a52579670e2b14ec03d410c3c980fafaf6d659c4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "facility",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
