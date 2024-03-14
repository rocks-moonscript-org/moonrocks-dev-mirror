local git_ref = '604d73c38d4c28ca68e9e441ffd405d68cb63051'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jakestanger/tree-sitter-corn'

rockspec_format = '3.0'
package = 'tree-sitter-corn'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for corn',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/jakestanger/tree-sitter-corn',
  license = 'MIT'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-corn-' .. '604d73c38d4c28ca68e9e441ffd405d68cb63051',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "corn",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
