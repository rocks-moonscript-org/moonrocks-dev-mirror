local git_ref = 'dc56df433bfbf107fee0139e187eb9750878fa84'
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
  dir = 'lazygit.nvim-' .. 'dc56df433bfbf107fee0139e187eb9750878fa84',
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
