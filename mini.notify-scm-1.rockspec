local git_ref = '7eb846bac7ecc1ca917fae3f5c299f1670d81d96'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.notify'

rockspec_format = '3.0'
package = 'mini.notify'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Show notifications. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.notify',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.notify-' .. '7eb846bac7ecc1ca917fae3f5c299f1670d81d96',
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
