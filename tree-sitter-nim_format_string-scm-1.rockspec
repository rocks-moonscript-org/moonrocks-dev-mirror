local git_ref = 'd45f75022d147cda056e98bfba68222c9c8eca3a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/aMOPel/tree-sitter-nim-format-string'

rockspec_format = '3.0'
package = 'tree-sitter-nim_format_string'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nim_format_string',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/aMOPel/tree-sitter-nim-format-string',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nim-format-string-' .. 'd45f75022d147cda056e98bfba68222c9c8eca3a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "nim_format_string",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
