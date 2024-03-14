local git_ref = 'e8dac87a9f789b23a2c7ab8e55b485a2f5927b98'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/monaqa/tree-sitter-mermaid'

rockspec_format = '3.0'
package = 'tree-sitter-mermaid'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for mermaid',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/monaqa/tree-sitter-mermaid',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-mermaid-' .. 'e8dac87a9f789b23a2c7ab8e55b485a2f5927b98',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "mermaid",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
