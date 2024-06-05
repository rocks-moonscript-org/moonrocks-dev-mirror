local git_ref = 'e6044aa28e61d4dd9ec86194d6f81743eced0c1c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.bufremove'

rockspec_format = '3.0'
package = 'mini.bufremove'
version = modrev ..'-'.. specrev

description = {
  summary = 'Remove Neovim buffers. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.bufremove',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.bufremove-' .. 'e6044aa28e61d4dd9ec86194d6f81743eced0c1c',
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
