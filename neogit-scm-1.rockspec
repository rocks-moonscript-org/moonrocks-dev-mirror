local git_ref = '683f69378bde873ddec7e52e4cd8f4f0bf1dfdd0'
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
  dir = 'neogit-' .. '683f69378bde873ddec7e52e4cd8f4f0bf1dfdd0',
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
