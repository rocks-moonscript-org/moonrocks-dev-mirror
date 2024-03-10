local git_ref = '677a7874ee8f1afc648c2e7d63a97bc21a7663c5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lukas-reineke/cmp-rg'

rockspec_format = '3.0'
package = 'cmp-rg'
version = modrev ..'-'.. specrev

description = {
  summary = 'ripgrep source for nvim-cmp',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lukas-reineke/cmp-rg',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-rg-' .. '677a7874ee8f1afc648c2e7d63a97bc21a7663c5',
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
