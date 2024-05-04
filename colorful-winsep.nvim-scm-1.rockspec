local git_ref = '1d0a0d6c8552ea5c5a02546a89efeb7c9abb16df'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-zh/colorful-winsep.nvim'

rockspec_format = '3.0'
package = 'colorful-winsep.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Make your nvim window separators colorful',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-zh/colorful-winsep.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorful-winsep.nvim-' .. '1d0a0d6c8552ea5c5a02546a89efeb7c9abb16df',
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
