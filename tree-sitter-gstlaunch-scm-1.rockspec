local git_ref = '2c0d9c94d35e37aa63fa5002163c8480985b3e5b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/tree-sitter-gstlaunch'

rockspec_format = '3.0'
package = 'tree-sitter-gstlaunch'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gstlaunch',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/theHamsta/tree-sitter-gstlaunch',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gstlaunch-' .. '2c0d9c94d35e37aa63fa5002163c8480985b3e5b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gstlaunch",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
