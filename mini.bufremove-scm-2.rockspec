local git_ref = '4cfbb201b2760da79ca6e1a00e9f67cbc99cbb8f'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.bufremove'

rockspec_format = '3.0'
package = 'mini.bufremove'
version = modrev ..'-'.. specrev

description = {
  summary = 'Remove Neovim buffers. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.bufremove',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.bufremove-' .. '4cfbb201b2760da79ca6e1a00e9f67cbc99cbb8f',
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
