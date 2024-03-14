local git_ref = '5e7210d945425b77f82cbaebc5af4dd3e1ad40f5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/elves/tree-sitter-elvish'

rockspec_format = '3.0'
package = 'tree-sitter-elvish'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for elvish',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/elves/tree-sitter-elvish',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-elvish-' .. '5e7210d945425b77f82cbaebc5af4dd3e1ad40f5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "elvish",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
