local git_ref = 'f8b34f206a14eb00b5723dbc15e9a5911f1210ab'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'nvim-snippy-' .. 'f8b34f206a14eb00b5723dbc15e9a5911f1210ab',
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
