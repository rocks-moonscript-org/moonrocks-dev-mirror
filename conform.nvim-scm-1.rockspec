local git_ref = '797de8f79055334104cf77893cd93fe3fc2ac154'
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
  dir = 'conform.nvim-' .. '797de8f79055334104cf77893cd93fe3fc2ac154',
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
