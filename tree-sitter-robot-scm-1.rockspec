local git_ref = '322e4cc65754d2b3fdef4f2f8a71e0762e3d13af'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Hubro/tree-sitter-robot'

rockspec_format = '3.0'
package = 'tree-sitter-robot'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for robot',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Hubro/tree-sitter-robot',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-robot-' .. '322e4cc65754d2b3fdef4f2f8a71e0762e3d13af',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "robot",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
