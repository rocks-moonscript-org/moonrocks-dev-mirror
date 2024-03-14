local git_ref = '514695df4985f56455b8f139a319453a2325cdcf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ObserverOfTime/tree-sitter-ssh-config'

rockspec_format = '3.0'
package = 'tree-sitter-ssh_config'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ssh_config',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/ObserverOfTime/tree-sitter-ssh-config',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ssh-config-' .. '514695df4985f56455b8f139a319453a2325cdcf',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "ssh_config",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
