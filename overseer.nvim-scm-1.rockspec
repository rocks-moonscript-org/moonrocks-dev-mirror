local git_ref = 'b72f6d23ce47ccd427be2341f389c63448278f17'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/overseer.nvim'

rockspec_format = '3.0'
package = 'overseer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A task runner and job management plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/overseer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'overseer.nvim-' .. 'b72f6d23ce47ccd427be2341f389c63448278f17',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc' } ,
}
