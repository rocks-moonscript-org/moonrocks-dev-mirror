local git_ref = '2b74a777b963dfdeeabfabf84d5ba611666adab4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/NeogitOrg/neogit'

rockspec_format = '3.0'
package = 'neogit'
version = modrev ..'-'.. specrev

description = {
  summary = 'An interactive and powerful Git interface for Neovim, inspired by Magit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/NeogitOrg/neogit',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neogit-' .. '2b74a777b963dfdeeabfabf84d5ba611666adab4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
