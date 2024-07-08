local git_ref = '290c3da965196d64f87050a076de9787a136e57a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.map'

rockspec_format = '3.0'
package = 'mini.map'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Window with buffer text overview. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.map',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.map-' .. '290c3da965196d64f87050a076de9787a136e57a',
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
