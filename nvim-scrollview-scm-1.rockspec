local git_ref = '9257c3f3ebf7608a8711caf44f878d87cd40395d'
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
  dir = 'nvim-scrollview-' .. '9257c3f3ebf7608a8711caf44f878d87cd40395d',
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
