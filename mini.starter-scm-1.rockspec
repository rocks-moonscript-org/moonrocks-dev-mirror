local git_ref = 'ce222a5b6de50a9963c1eb62aa16ec6d5efca7ee'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.starter'

rockspec_format = '3.0'
package = 'mini.starter'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim start screen. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.starter',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.starter-' .. 'ce222a5b6de50a9963c1eb62aa16ec6d5efca7ee',
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
