local git_ref = 'e84f8bc2abc5d6edaa7bd48a16c3078504ecb713'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/savq/melange-nvim'

rockspec_format = '3.0'
package = 'melange-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Warm color scheme for Neovim and beyond',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/savq/melange-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'melange-nvim-' .. 'e84f8bc2abc5d6edaa7bd48a16c3078504ecb713',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors' } ,
}
