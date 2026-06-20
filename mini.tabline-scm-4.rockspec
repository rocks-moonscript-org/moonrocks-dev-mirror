local git_ref = '7e8584a06b86902c64227e4abd0c39ae74061101'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.tabline'

rockspec_format = '3.0'
package = 'mini.tabline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim tabline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.tabline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.tabline-' .. '7e8584a06b86902c64227e4abd0c39ae74061101',
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
