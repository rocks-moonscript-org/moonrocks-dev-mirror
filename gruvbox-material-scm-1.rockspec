local git_ref = '1aa1842d80a8845842b9340df2d93683d667247b'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'gruvbox-material-' .. '1aa1842d80a8845842b9340df2d93683d667247b',
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
