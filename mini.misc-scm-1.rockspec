local git_ref = 'e51fa9430a4e18679d8b913ed2441182b5da2176'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.misc'

rockspec_format = '3.0'
package = 'mini.misc'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Miscellaneous functions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.misc',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.misc-' .. 'e51fa9430a4e18679d8b913ed2441182b5da2176',
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
