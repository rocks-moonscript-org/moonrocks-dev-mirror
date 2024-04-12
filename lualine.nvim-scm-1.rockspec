local git_ref = '0a5a66803c7407767b799067986b4dc3036e1983'
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
  dir = 'lualine.nvim-' .. '0a5a66803c7407767b799067986b4dc3036e1983',
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
