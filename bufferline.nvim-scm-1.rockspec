local git_ref = '99337f63f0a3c3ab9519f3d1da7618ca4f91cffe'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/akinsho/bufferline.nvim'

rockspec_format = '3.0'
package = 'bufferline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A snazzy bufferline for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/akinsho/bufferline.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'bufferline.nvim-' .. '99337f63f0a3c3ab9519f3d1da7618ca4f91cffe',
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
