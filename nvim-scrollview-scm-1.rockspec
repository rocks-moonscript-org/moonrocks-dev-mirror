local git_ref = '7ef112edde3355cb50c3b7bf1e8909c8d2bc3186'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/dstein64/nvim-scrollview'

rockspec_format = '3.0'
package = 'nvim-scrollview'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin that displays interactive vertical scrollbars and signs.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dstein64/nvim-scrollview',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-scrollview-' .. '7ef112edde3355cb50c3b7bf1e8909c8d2bc3186',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
