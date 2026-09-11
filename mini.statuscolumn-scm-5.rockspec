local git_ref = '1ef647472b8d635071cee2cee26bf809cf3d3965'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nvim-mini/mini.statuscolumn'

rockspec_format = '3.0'
package = 'mini.statuscolumn'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim statuscolumn. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.statuscolumn',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.statuscolumn-' .. '1ef647472b8d635071cee2cee26bf809cf3d3965',
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
