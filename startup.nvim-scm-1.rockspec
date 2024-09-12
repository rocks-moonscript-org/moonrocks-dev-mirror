local git_ref = '81222a9956148eebf10363726d8bccf8793aa41f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/startup-nvim/startup.nvim'

rockspec_format = '3.0'
package = 'startup.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A highly configurable neovim startup screen',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/startup-nvim/startup.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1', 'telescope.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'startup.nvim-' .. '81222a9956148eebf10363726d8bccf8793aa41f',
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
