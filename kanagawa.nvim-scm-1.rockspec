local git_ref = '7735b2147ee6d223e43287044caa4fb070bdfa3d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rebelot/kanagawa.nvim'

rockspec_format = '3.0'
package = 'kanagawa.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rebelot/kanagawa.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'kanagawa.nvim-' .. '7735b2147ee6d223e43287044caa4fb070bdfa3d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
