local git_ref = 'f0800d54bad7fbf072d1d34a08f1923d653dc381'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/ggandor/leap.nvim'

rockspec_format = '3.0'
package = 'leap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim\'s answer to the mouse 🦘',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ggandor/leap.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'leap.nvim-' .. 'f0800d54bad7fbf072d1d34a08f1923d653dc381',
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
