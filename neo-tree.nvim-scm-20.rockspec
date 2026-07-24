local git_ref = 'a4deaea4811b677067f515fb535b47ed3002c849'
local modrev = 'scm'
local specrev = '20'

local repo_url = 'https://github.com/nvim-neo-tree/neo-tree.nvim'

rockspec_format = '3.0'
package = 'neo-tree.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to manage the file system and other tree like structures.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neo-tree.nvim-' .. 'a4deaea4811b677067f515fb535b47ed3002c849',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
