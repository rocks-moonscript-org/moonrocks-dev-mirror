local git_ref = '915179759c9459b69faae90a38da6fc1ca6b90d7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/trouble.nvim'

rockspec_format = '3.0'
package = 'trouble.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/trouble.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'trouble.nvim-' .. '915179759c9459b69faae90a38da6fc1ca6b90d7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
