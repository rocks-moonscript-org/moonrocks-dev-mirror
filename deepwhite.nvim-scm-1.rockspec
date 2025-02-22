local git_ref = 'ccad56bb5eb7d29258980cfc0a716eb87bcad69e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Verf/deepwhite.nvim'

rockspec_format = '3.0'
package = 'deepwhite.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'DeepWhite colorscheme for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Verf/deepwhite.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'deepwhite.nvim-' .. 'ccad56bb5eb7d29258980cfc0a716eb87bcad69e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
