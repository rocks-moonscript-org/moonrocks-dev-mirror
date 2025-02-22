local git_ref = 'f6c7bac2f66dea3689a07c9329ae73adcd87b92b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/snacks.nvim'

rockspec_format = '3.0'
package = 'snacks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🍿 A collection of small QoL plugins for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/snacks.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'snacks.nvim-' .. 'f6c7bac2f66dea3689a07c9329ae73adcd87b92b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'queries' } ,
}
