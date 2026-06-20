local git_ref = '8e3fe6ee41a960226bc0dc663120363a40bc18bd'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.cmdline'

rockspec_format = '3.0'
package = 'mini.cmdline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim command line tweaks. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.cmdline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.cmdline-' .. '8e3fe6ee41a960226bc0dc663120363a40bc18bd',
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
