local git_ref = '8b968581e5c19d22a861d5f3fe5dbd83394fa681'
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
  dir = 'colorbuddy.nvim-' .. '8b968581e5c19d22a861d5f3fe5dbd83394fa681',
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
