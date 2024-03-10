local git_ref = '3ee9a0ea9feeef08ae35e40c8be6a2fa2c20f2d3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ziontee113/icon-picker.nvim'

rockspec_format = '3.0'
package = 'icon-picker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'This is a Neovim plugin that helps you pick Nerd Font Icons, Symbols & Emojis',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ziontee113/icon-picker.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'icon-picker.nvim-' .. '3ee9a0ea9feeef08ae35e40c8be6a2fa2c20f2d3',
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
