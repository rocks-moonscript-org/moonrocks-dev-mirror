local git_ref = '11d779b26a9ab2b3db8c22c6ac9fb6e8ed4fea79'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/sainnhe/gruvbox-material'

rockspec_format = '3.0'
package = 'gruvbox-material'
version = modrev ..'-'.. specrev

description = {
  summary = 'Gruvbox theme for (Neo)vim with the Material Palette',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sainnhe/gruvbox-material',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gruvbox-material-' .. '11d779b26a9ab2b3db8c22c6ac9fb6e8ed4fea79',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
