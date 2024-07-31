local git_ref = 'b2077aa2c83df7ebc19b2a20a3a0654b24ae9c8f'
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
  dir = 'autoclose.nvim-' .. 'b2077aa2c83df7ebc19b2a20a3a0654b24ae9c8f',
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
