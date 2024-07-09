local git_ref = '323a3e16ed603e2e17b26b1c836d1e86c279f726'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/windwp/nvim-ts-autotag'

rockspec_format = '3.0'
package = 'nvim-ts-autotag'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use treesitter to auto close and auto rename html tag',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/windwp/nvim-ts-autotag',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-ts-autotag-' .. '323a3e16ed603e2e17b26b1c836d1e86c279f726',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
