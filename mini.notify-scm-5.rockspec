local git_ref = '7d3832e369853eaf1a2d25dede9db34ae5a809e9'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'mini.notify-' .. '7d3832e369853eaf1a2d25dede9db34ae5a809e9',
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
