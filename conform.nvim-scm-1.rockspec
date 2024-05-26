local git_ref = 'f3b930db4964d60e255c8f9e37b7f2218dfc08cb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/conform.nvim'

rockspec_format = '3.0'
package = 'conform.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lightweight yet powerful formatter plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/conform.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'conform.nvim-' .. 'f3b930db4964d60e255c8f9e37b7f2218dfc08cb',
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
