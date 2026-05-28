local git_ref = 'a905eeebc4e63fdc48b5135d3bf8aea5618fb21c'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-lualine/lualine.nvim'

rockspec_format = '3.0'
package = 'lualine.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A blazing fast and easy to configure neovim statusline plugin written in pure lua.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-lualine/lualine.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lualine.nvim-' .. 'a905eeebc4e63fdc48b5135d3bf8aea5618fb21c',
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
