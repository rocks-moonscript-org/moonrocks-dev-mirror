local git_ref = '32252e1450b1c8a27a4a61cdfde60791192a1d0c'
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
  dir = 'nvim-snippy-' .. '32252e1450b1c8a27a4a61cdfde60791192a1d0c',
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
