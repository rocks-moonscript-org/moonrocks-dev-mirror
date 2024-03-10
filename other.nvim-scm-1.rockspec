local git_ref = 'd36a66af270b63459c080d4589126a06cf56578c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rgroli/other.nvim'

rockspec_format = '3.0'
package = 'other.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Open alternative files for the current buffer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rgroli/other.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'other.nvim-' .. 'd36a66af270b63459c080d4589126a06cf56578c',
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
