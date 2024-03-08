local git_ref = '251d541a8ab745e81295a53c128829cb2bff18e3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.move'

rockspec_format = '3.0'
package = 'mini.move'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Move any selection in any direction. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.move',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.move-' .. '251d541a8ab745e81295a53c128829cb2bff18e3',
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
