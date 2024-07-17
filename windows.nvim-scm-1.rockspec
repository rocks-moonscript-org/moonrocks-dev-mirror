local git_ref = 'c7492552b23d0ab30325e90b56066ec51242adc8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/anuvyklack/windows.nvim'

rockspec_format = '3.0'
package = 'windows.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatically expand width of the current window. Maximizes and restore it. And all this with nice animations!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/anuvyklack/windows.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'animation.nvim', 'middleclass' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'windows.nvim-' .. 'c7492552b23d0ab30325e90b56066ec51242adc8',
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
