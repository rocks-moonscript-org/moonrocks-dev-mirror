local git_ref = 'f6aad7dde7fcf54148ccfc5f622c6d5badd0cc3d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/persistence.nvim'

rockspec_format = '3.0'
package = 'persistence.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple session management for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/persistence.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'persistence.nvim-' .. 'f6aad7dde7fcf54148ccfc5f622c6d5badd0cc3d',
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
