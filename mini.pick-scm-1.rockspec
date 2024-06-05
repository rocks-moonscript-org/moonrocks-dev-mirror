local git_ref = '27fc7862b7a1fc2e04356dc5ed1caf7049baccb4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.pick'

rockspec_format = '3.0'
package = 'mini.pick'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Pick anything. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.pick',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.pick-' .. '27fc7862b7a1fc2e04356dc5ed1caf7049baccb4',
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
