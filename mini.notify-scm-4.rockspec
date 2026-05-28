local git_ref = '7e75de73c60590e3f35d5cecd5677a68a437fc54'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.notify'

rockspec_format = '3.0'
package = 'mini.notify'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Show notifications. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.notify',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.notify-' .. '7e75de73c60590e3f35d5cecd5677a68a437fc54',
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
