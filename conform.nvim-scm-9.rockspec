local git_ref = '95141076dd44181bc2140193ea5c539e143ec3ea'
local modrev = 'scm'
local specrev = '9'

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
  dir = 'conform.nvim-' .. '95141076dd44181bc2140193ea5c539e143ec3ea',
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
