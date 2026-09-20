local git_ref = '9ffc6103926718f7070fb4017694543cd7dc9718'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/kdheepak/lazygit.nvim'

rockspec_format = '3.0'
package = 'lazygit.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Plugin for calling lazygit from within neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kdheepak/lazygit.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lazygit.nvim-' .. '9ffc6103926718f7070fb4017694543cd7dc9718',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'ftplugin', 'plugin' } ,
}
