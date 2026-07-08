local git_ref = '86a150f1556d0293194d0327f7b4cb97c87920bb'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.map'

rockspec_format = '3.0'
package = 'mini.map'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Window with buffer text overview. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.map',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.map-' .. '86a150f1556d0293194d0327f7b4cb97c87920bb',
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
