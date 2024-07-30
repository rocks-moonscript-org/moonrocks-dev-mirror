local git_ref = '0f2724285b272615c95372c93d44612152c0b1ee'
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
  dir = 'mini.pick-' .. '0f2724285b272615c95372c93d44612152c0b1ee',
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
