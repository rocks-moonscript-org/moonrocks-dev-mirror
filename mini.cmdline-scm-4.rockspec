local git_ref = '044848fd9b69d01ba05d0a56a530969743a94eba'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'mini.cmdline-' .. '044848fd9b69d01ba05d0a56a530969743a94eba',
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
