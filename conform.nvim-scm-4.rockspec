local git_ref = '0451b96660e8ca7dd8897718bad63932cf59255a'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'conform.nvim-' .. '0451b96660e8ca7dd8897718bad63932cf59255a',
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
