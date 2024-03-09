local git_ref = 'f6bcea78afb3060b198125256f897040538bcb81'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/famiu/bufdelete.nvim'

rockspec_format = '3.0'
package = 'bufdelete.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Delete Neovim buffers without losing window layout',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/famiu/bufdelete.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'bufdelete.nvim-' .. 'f6bcea78afb3060b198125256f897040538bcb81',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
