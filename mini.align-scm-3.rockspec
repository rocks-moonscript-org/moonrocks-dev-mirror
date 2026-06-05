local git_ref = '36b0cd9f8b315946849e37f4d0918cf01bb66214'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.align'

rockspec_format = '3.0'
package = 'mini.align'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to align text interactively. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.align',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.align-' .. '36b0cd9f8b315946849e37f4d0918cf01bb66214',
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
