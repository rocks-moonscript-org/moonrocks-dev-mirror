local git_ref = 'c49f2deaba3d3c669e7243b57619e0078e7a351b'
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
  dir = 'staline.nvim-' .. 'c49f2deaba3d3c669e7243b57619e0078e7a351b',
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
