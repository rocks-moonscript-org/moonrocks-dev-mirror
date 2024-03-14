local git_ref = 'f4685bf11ac466dd278449bcfe5fd014e94aa504'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/shunsambongi/tree-sitter-gitignore'

rockspec_format = '3.0'
package = 'tree-sitter-gitignore'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gitignore',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/shunsambongi/tree-sitter-gitignore',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gitignore-' .. 'f4685bf11ac466dd278449bcfe5fd014e94aa504',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "gitignore",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
