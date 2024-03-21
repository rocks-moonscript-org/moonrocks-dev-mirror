local git_ref = 'a03020c920a55b75d82ac54c9da18cbf52e8c4d8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/b0o/incline.nvim'

rockspec_format = '3.0'
package = 'incline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Floating statuslines for Neovim, winbar alternative',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/b0o/incline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'incline.nvim-' .. 'a03020c920a55b75d82ac54c9da18cbf52e8c4d8',
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
