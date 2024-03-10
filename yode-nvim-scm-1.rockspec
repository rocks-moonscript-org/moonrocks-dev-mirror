local git_ref = 'eaf3141b919c143ebf174d7ad180abd9c032b38c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hoschi/yode-nvim'

rockspec_format = '3.0'
package = 'yode-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Yode plugin for NeoVim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hoschi/yode-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yode-nvim-' .. 'eaf3141b919c143ebf174d7ad180abd9c032b38c',
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
