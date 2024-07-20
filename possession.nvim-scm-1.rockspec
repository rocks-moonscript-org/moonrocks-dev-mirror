local git_ref = 'e3b9d7c00fe335bedb5a12d88e9eac08c944acfe'
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
  dir = 'possession.nvim-' .. 'e3b9d7c00fe335bedb5a12d88e9eac08c944acfe',
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
