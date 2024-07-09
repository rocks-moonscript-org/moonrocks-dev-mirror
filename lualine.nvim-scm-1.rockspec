local git_ref = '6a40b530539d2209f7dc0492f3681c8c126647ad'
local modrev = 'scm'
local specrev = '1'

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

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lualine.nvim-' .. '6a40b530539d2209f7dc0492f3681c8c126647ad',
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
