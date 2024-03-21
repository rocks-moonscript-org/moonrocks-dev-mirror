local git_ref = '9e96ccd88f4510d0a54ce1d5c11119eac9fb217e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tjdevries/colorbuddy.nvim'

rockspec_format = '3.0'
package = 'colorbuddy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Your color buddy for making cool neovim color schemes',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tjdevries/colorbuddy.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbuddy.nvim-' .. '9e96ccd88f4510d0a54ce1d5c11119eac9fb217e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
