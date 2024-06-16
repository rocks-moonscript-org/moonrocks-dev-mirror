local git_ref = '95d03ad5450389ad7dc2a0fab14ebb3d46bc2c96'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/persistence.nvim'

rockspec_format = '3.0'
package = 'persistence.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple session management for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/persistence.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'persistence.nvim-' .. '95d03ad5450389ad7dc2a0fab14ebb3d46bc2c96',
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
