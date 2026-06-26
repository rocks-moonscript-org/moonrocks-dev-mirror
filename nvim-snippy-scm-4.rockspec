local git_ref = '1f5a5c82cb4902522806a58cf25479f6f8fe16ac'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/dcampos/nvim-snippy'

rockspec_format = '3.0'
package = 'nvim-snippy'
version = modrev ..'-'.. specrev

description = {
  summary = 'Snippet plugin for Neovim written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dcampos/nvim-snippy',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-snippy-' .. '1f5a5c82cb4902522806a58cf25479f6f8fe16ac',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftdetect', 'ftplugin', 'indent', 'plugin', 'syntax' } ,
}
