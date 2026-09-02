local git_ref = '8d3560f5d0e4dd75490acf14fd60ea82e676b86c'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'mini.statuscolumn-' .. '8d3560f5d0e4dd75490acf14fd60ea82e676b86c',
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
