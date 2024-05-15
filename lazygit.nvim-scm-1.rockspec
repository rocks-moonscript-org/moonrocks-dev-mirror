local git_ref = 'ad3e1ea592f9d13e86e0d4e850224d9d78069508'
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
  dir = 'lazygit.nvim-' .. 'ad3e1ea592f9d13e86e0d4e850224d9d78069508',
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
