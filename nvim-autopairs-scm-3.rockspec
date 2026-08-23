local git_ref = '430522f95fe4fb7c511ec64f8c1a90cc6a66c05c'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/windwp/nvim-autopairs'

rockspec_format = '3.0'
package = 'nvim-autopairs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Autopairs for neovim written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/windwp/nvim-autopairs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-autopairs-' .. '430522f95fe4fb7c511ec64f8c1a90cc6a66c05c',
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
