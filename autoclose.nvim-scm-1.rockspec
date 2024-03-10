local git_ref = 'dc42806540dcf448ecb2bad6b67204410cfbe629'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'autoclose.nvim-' .. 'dc42806540dcf448ecb2bad6b67204410cfbe629',
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
