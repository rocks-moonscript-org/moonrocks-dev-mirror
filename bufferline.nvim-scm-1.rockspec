local git_ref = '0b2fd861eee7595015b6561dade52fb060be10c4'
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
  dir = 'bufferline.nvim-' .. '0b2fd861eee7595015b6561dade52fb060be10c4',
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
