local git_ref = '1417ad3630e703e9cc13d2b657149ab8891a8131'
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
  dir = 'pantran.nvim-' .. '1417ad3630e703e9cc13d2b657149ab8891a8131',
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
