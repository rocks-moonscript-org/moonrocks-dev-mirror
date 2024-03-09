local git_ref = '1cb5e030bb16df52c8428b53dc235466a4eb1d01'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/pocco81/high-str.nvim'

rockspec_format = '3.0'
package = 'high-str.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A NeoVim plugin for highlighting visual selections like in a normal document editor!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pocco81/high-str.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'high-str.nvim-' .. '1cb5e030bb16df52c8428b53dc235466a4eb1d01',
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
