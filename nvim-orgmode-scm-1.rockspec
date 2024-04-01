local git_ref = '4c6cf0d000c9a9b2ce474e0e28a7c80489b01f5e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-orgmode/orgmode'

rockspec_format = '3.0'
package = 'nvim-orgmode'
version = modrev ..'-'.. specrev

description = {
  summary = 'Orgmode clone written in Lua for Neovim 0.9+.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-orgmode/orgmode',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'orgmode-' .. '4c6cf0d000c9a9b2ce474e0e28a7c80489b01f5e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'indent', 'parser', 'plugin', 'queries', 'syntax' } ,
}
