local git_ref = '87b9a4fc514a789fca833bf540484fbda6a946b3'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'nvim-snippy-' .. '87b9a4fc514a789fca833bf540484fbda6a946b3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftplugin', 'ftdetect', 'indent', 'plugin', 'syntax' } ,
}
