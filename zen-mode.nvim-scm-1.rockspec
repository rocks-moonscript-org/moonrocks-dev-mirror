local git_ref = 'a31cf7113db34646ca320f8c2df22cf1fbfc6f2a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/zen-mode.nvim'

rockspec_format = '3.0'
package = 'zen-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Distraction-free coding for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/zen-mode.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zen-mode.nvim-' .. 'a31cf7113db34646ca320f8c2df22cf1fbfc6f2a',
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
