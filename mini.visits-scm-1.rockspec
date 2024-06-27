local git_ref = 'ba562001b033943f2f0ee943f0d0f1ee621aa90f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.visits'

rockspec_format = '3.0'
package = 'mini.visits'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Track and reuse file system visits. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.visits',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.visits-' .. 'ba562001b033943f2f0ee943f0d0f1ee621aa90f',
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
