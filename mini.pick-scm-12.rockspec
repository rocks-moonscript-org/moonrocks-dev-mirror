local git_ref = '0b3599e6df730f3ced3359d33c674288de0d186d'
local modrev = 'scm'
local specrev = '12'

local repo_url = 'https://github.com/nvim-mini/mini.pick'

rockspec_format = '3.0'
package = 'mini.pick'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Pick anything. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.pick',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.pick-' .. '0b3599e6df730f3ced3359d33c674288de0d186d',
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
