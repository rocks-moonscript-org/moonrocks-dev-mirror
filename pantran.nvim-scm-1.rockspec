local git_ref = '250b1d8e81f83e6aff061f4c75db008c684f5971'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/potamides/pantran.nvim'

rockspec_format = '3.0'
package = 'pantran.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use your favorite machine translation engines without having to leave your favorite editor.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/potamides/pantran.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'pantran.nvim-' .. '250b1d8e81f83e6aff061f4c75db008c684f5971',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
