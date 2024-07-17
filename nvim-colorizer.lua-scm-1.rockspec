local git_ref = 'a065833f35a3a7cc3ef137ac88b5381da2ba302e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/norcalli/nvim-colorizer.lua'

rockspec_format = '3.0'
package = 'nvim-colorizer.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'The fastest Neovim colorizer.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/norcalli/nvim-colorizer.lua',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-colorizer.lua-' .. 'a065833f35a3a7cc3ef137ac88b5381da2ba302e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
