local git_ref = '222b48f634b2e121c6310ca1a3bbee1e4bc52fd3'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'mini.test-' .. '222b48f634b2e121c6310ca1a3bbee1e4bc52fd3',
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
