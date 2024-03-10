local git_ref = '461799624948bfb66f73b20b6fffa7e4c8ca6d08'
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
  dir = 'pantran.nvim-' .. '461799624948bfb66f73b20b6fffa7e4c8ca6d08',
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
