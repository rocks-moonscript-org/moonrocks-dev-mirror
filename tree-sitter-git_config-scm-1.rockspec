local git_ref = '9c2a1b7894e6d9eedfe99805b829b4ecd871375e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/the-mikedavis/tree-sitter-git-config'

rockspec_format = '3.0'
package = 'tree-sitter-git_config'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for git_config',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/the-mikedavis/tree-sitter-git-config',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-git-config-' .. '9c2a1b7894e6d9eedfe99805b829b4ecd871375e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "git_config",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
