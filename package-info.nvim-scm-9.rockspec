local git_ref = '47b093600d311105c03bc3e530327d7f794bc4dc'
local modrev = 'scm'
local specrev = '9'

local repo_url = 'https://github.com/vuki656/package-info.nvim'

rockspec_format = '3.0'
package = 'package-info.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'All the npm/yarn/pnpm commands I don\'t want to type',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vuki656/package-info.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'package-info.nvim-' .. '47b093600d311105c03bc3e530327d7f794bc4dc',
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
