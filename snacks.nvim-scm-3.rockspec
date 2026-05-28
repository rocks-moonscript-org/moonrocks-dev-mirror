local git_ref = '882c996cf28183f4d63640de0b4c02ec886d01f2'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'snacks.nvim-' .. '882c996cf28183f4d63640de0b4c02ec886d01f2',
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
