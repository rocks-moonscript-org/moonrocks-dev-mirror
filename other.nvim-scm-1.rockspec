local git_ref = '2a82971d3763474df29d5d32d0699b5bb13c551f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rgroli/other.nvim'

rockspec_format = '3.0'
package = 'other.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Open alternative files for the current buffer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rgroli/other.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'other.nvim-' .. '2a82971d3763474df29d5d32d0699b5bb13c551f',
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
