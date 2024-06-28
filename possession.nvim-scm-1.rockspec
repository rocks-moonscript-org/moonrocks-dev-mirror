local git_ref = '460d5349b709842d6133f174419705b0d7802c8c'
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
  dir = 'possession.nvim-' .. '460d5349b709842d6133f174419705b0d7802c8c',
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
