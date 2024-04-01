local git_ref = '0ada6c6e7e138df92f5009b6952f4ac41248305a'
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
  dir = 'lazygit.nvim-' .. '0ada6c6e7e138df92f5009b6952f4ac41248305a',
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
