local git_ref = '979b6c82f60cfa80f4cf437d77446d0ded0addf0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/pocco81/auto-save.nvim'

rockspec_format = '3.0'
package = 'auto-save.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatically save your changes in NeoVim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pocco81/auto-save.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'auto-save.nvim-' .. '979b6c82f60cfa80f4cf437d77446d0ded0addf0',
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
