local git_ref = 'd337bc9b343df3328921ef4c3f8ff604102d0201'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tamton-aquib/staline.nvim'

rockspec_format = '3.0'
package = 'staline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A modern lightweight statusline and bufferline plugin for neovim in lua.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tamton-aquib/staline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'staline.nvim-' .. 'd337bc9b343df3328921ef4c3f8ff604102d0201',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
