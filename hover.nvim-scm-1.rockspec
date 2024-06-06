local git_ref = '4d2cef11e03879bbb5514f6fa26fe13ec5a210bd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lewis6991/hover.nvim'

rockspec_format = '3.0'
package = 'hover.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Hover plugin framework for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lewis6991/hover.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hover.nvim-' .. '4d2cef11e03879bbb5514f6fa26fe13ec5a210bd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
