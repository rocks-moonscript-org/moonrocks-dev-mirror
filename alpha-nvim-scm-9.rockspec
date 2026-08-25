local git_ref = '4ba26e41990c11620c96c0e1cff20eab65efde4a'
local modrev = 'scm'
local specrev = '9'

local repo_url = 'https://github.com/goolord/alpha-nvim'

rockspec_format = '3.0'
package = 'alpha-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lua powered greeter like vim-startify / dashboard-nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/goolord/alpha-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'alpha-nvim-' .. '4ba26e41990c11620c96c0e1cff20eab65efde4a',
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
