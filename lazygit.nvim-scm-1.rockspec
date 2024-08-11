local git_ref = '2432b447483f42ff2e18b2d392cb2bb27e495c08'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'lazygit.nvim-' .. '2432b447483f42ff2e18b2d392cb2bb27e495c08',
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
