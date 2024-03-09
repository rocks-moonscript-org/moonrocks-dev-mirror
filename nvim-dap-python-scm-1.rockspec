local git_ref = '66560f0ebddf96604f7037e1efad3ba6942761e6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nvim-dap-python'

rockspec_format = '3.0'
package = 'nvim-dap-python'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extension for nvim-dap, providing default configurations for python and methods to debug individual test methods or classes.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nvim-dap-python',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-python-' .. '66560f0ebddf96604f7037e1efad3ba6942761e6',
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
