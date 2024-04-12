local git_ref = 'b129892f783740e6cf741f2ea09fa5dd512aa584'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim'

rockspec_format = '3.0'
package = 'mason-tool-installer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Install and upgrade third party tools automatically',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'mason.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mason-tool-installer.nvim-' .. 'b129892f783740e6cf741f2ea09fa5dd512aa584',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
