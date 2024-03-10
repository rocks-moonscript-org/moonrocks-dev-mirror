local git_ref = '1212fb6082b7177dde17ea65e429e027835aeb40'
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
  dir = 'mason-tool-installer.nvim-' .. '1212fb6082b7177dde17ea65e429e027835aeb40',
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
