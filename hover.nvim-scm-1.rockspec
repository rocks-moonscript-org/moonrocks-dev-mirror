local git_ref = '4339cbbcb572b1934c53dcb66ad4bf6a0abb7918'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lewis6991/hover.nvim'

rockspec_format = '3.0'
package = 'hover.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Hover plugin framework for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lewis6991/hover.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hover.nvim-' .. '4339cbbcb572b1934c53dcb66ad4bf6a0abb7918',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
