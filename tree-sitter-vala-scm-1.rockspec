local git_ref = '8f690bfa639f2b83d1fb938ed3dd98a7ba453e8b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vala-lang/tree-sitter-vala'

rockspec_format = '3.0'
package = 'tree-sitter-vala'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for vala',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/vala-lang/tree-sitter-vala',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-vala-' .. '8f690bfa639f2b83d1fb938ed3dd98a7ba453e8b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "vala",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
