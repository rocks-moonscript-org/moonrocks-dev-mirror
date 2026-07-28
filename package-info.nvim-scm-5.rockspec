local git_ref = '9e40ba35e1f91df3686f4b4b6619dc2ef92561fa'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'package-info.nvim-' .. '9e40ba35e1f91df3686f4b4b6619dc2ef92561fa',
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
