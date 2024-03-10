local git_ref = '4665ceec10991e040b7117582e62cc5edd3c964f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jedrzejboczar/possession.nvim'

rockspec_format = '3.0'
package = 'possession.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Flexible session management for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jedrzejboczar/possession.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'possession.nvim-' .. '4665ceec10991e040b7117582e62cc5edd3c964f',
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
