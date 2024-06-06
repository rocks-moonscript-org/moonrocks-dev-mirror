local git_ref = '31017128cbca6e31376f4c7826c39568404aa863'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/lspsaga.nvim'

rockspec_format = '3.0'
package = 'lspsaga.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Improve neovim LSP experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/lspsaga.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lspsaga.nvim-' .. '31017128cbca6e31376f4c7826c39568404aa863',
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
