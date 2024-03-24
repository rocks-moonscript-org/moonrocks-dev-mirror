local git_ref = '0.4.1-with-generated-files'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/alex-pinkus/tree-sitter-swift'

rockspec_format = '3.0'
package = 'tree-sitter-swift'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for swift',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alex-pinkus/tree-sitter-swift',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-swift-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "swift",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = true,
  generate_requires_npm = false,
  location = nil,
}