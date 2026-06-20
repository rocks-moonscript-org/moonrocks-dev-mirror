local git_ref = '35c67cb7f2dc697ed0c7c06400fcf29a8a521d7d'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.test'

rockspec_format = '3.0'
package = 'mini.test'
version = modrev ..'-'.. specrev

description = {
  summary = 'Test neovim plugins. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.test',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.test-' .. '35c67cb7f2dc697ed0c7c06400fcf29a8a521d7d',
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
