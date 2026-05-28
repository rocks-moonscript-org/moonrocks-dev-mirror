local git_ref = '11660bc303772d9a34861a3f2d06f473752b4f69'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/max397574/better-escape.nvim'

rockspec_format = '3.0'
package = 'better-escape.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Escape from insert mode without delay when typing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/max397574/better-escape.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'better-escape.nvim-' .. '11660bc303772d9a34861a3f2d06f473752b4f69',
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
