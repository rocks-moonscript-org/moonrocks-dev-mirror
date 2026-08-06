local git_ref = 'f9c8816002ef4b99469c45d30274194cf027d2fc'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/akinsho/flutter-tools.nvim'

rockspec_format = '3.0'
package = 'flutter-tools.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tools to help create flutter apps in neovim using the native lsp',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/akinsho/flutter-tools.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flutter-tools.nvim-' .. 'f9c8816002ef4b99469c45d30274194cf027d2fc',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'syntax' } ,
}
