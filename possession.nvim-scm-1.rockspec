local git_ref = 'b0a2b4c5680e4c1a9b0d1fb6813e87aec80f3b07'
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
  dir = 'possession.nvim-' .. 'b0a2b4c5680e4c1a9b0d1fb6813e87aec80f3b07',
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
