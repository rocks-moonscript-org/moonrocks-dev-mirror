local git_ref = 'eaf4bc31b86419c26ad7b3a142dd36ca545ca2e4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/m4xshen/hardtime.nvim'

rockspec_format = '3.0'
package = 'hardtime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin helping you establish good command workflow and habit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/m4xshen/hardtime.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hardtime.nvim-' .. 'eaf4bc31b86419c26ad7b3a142dd36ca545ca2e4',
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
