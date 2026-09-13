local git_ref = 'bcad8e84d9cd78ba73433cb396b68e489af11e31'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/m4xshen/autoclose.nvim'

rockspec_format = '3.0'
package = 'autoclose.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A minimalist Neovim plugin that auto pairs & closes brackets',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/m4xshen/autoclose.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'autoclose.nvim-' .. 'bcad8e84d9cd78ba73433cb396b68e489af11e31',
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
