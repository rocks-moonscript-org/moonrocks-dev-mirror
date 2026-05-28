local git_ref = 'cd5fe95f61fdf6ef7db3732be79126032ab1dd3e'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'startup.nvim-' .. 'cd5fe95f61fdf6ef7db3732be79126032ab1dd3e',
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
