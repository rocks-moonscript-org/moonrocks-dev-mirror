local git_ref = '0977d909000510b9d3c16981e16580b8433c8697'
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
  dir = 'mini.move-' .. '0977d909000510b9d3c16981e16580b8433c8697',
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
