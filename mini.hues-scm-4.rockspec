local git_ref = 'ab36ead75b445fd81e00e7c3e1cbf0bc1e8f2d14'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.hues'

rockspec_format = '3.0'
package = 'mini.hues'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Generate configurable color scheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.hues',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hues-' .. 'ab36ead75b445fd81e00e7c3e1cbf0bc1e8f2d14',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
