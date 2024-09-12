local git_ref = 'a7ce9c78a7c710c28bee56dfab10a5c0c80b7fb5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nvim-lint'

rockspec_format = '3.0'
package = 'nvim-lint'
version = modrev ..'-'.. specrev

description = {
  summary = 'An asynchronous linter plugin for Neovim complementary to the built-in Language Server Protocol support.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nvim-lint',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lint-' .. 'a7ce9c78a7c710c28bee56dfab10a5c0c80b7fb5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
