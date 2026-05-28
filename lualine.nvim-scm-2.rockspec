local git_ref = 'f5d2a8570f8b736ddb9bb4be504355bcd6e15ec8'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'lualine.nvim-' .. 'f5d2a8570f8b736ddb9bb4be504355bcd6e15ec8',
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
