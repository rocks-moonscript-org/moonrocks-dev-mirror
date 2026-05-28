local git_ref = '2dff010394208a0e880c46e06735f9d5f5272aaa'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/ghillb/cybu.nvim'

rockspec_format = '3.0'
package = 'cybu.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that offers context when cycling buffers in the form of a customizable notification window.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ghillb/cybu.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cybu.nvim-' .. '2dff010394208a0e880c46e06735f9d5f5272aaa',
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
