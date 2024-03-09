local git_ref = 'ac7ad3c8e61630d15af1f6266441984f54f54fd2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/elihunter173/dirbuf.nvim'

rockspec_format = '3.0'
package = 'dirbuf.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A file manager for Neovim which lets you edit your filesystem like you edit text',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/elihunter173/dirbuf.nvim',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dirbuf.nvim-' .. 'ac7ad3c8e61630d15af1f6266441984f54f54fd2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin', 'syntax' } ,
}
