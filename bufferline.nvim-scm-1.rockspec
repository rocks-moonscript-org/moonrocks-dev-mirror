local git_ref = '64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef'
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
  dir = 'bufferline.nvim-' .. '64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef',
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
