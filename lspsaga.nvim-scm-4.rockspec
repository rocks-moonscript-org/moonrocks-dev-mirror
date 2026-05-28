local git_ref = '3e33a6a6c5d379f3d4fae77fae6b53b762a0a30f'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvimdev/lspsaga.nvim'

rockspec_format = '3.0'
package = 'lspsaga.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Improve neovim LSP experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/lspsaga.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lspsaga.nvim-' .. '3e33a6a6c5d379f3d4fae77fae6b53b762a0a30f',
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
