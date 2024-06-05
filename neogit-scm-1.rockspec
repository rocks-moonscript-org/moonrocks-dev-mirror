local git_ref = '3d58bf1d548f6fafdaab8ce4d75e25c438aee92c'
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
  dir = 'neogit-' .. '3d58bf1d548f6fafdaab8ce4d75e25c438aee92c',
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
