local git_ref = '72a05f62c52241bc7441c820eb53946f92b2e6a4'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/catgoose/nvim-colorizer.lua'

rockspec_format = '3.0'
package = 'nvim-colorizer.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'The fastest Neovim colorizer.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/catgoose/nvim-colorizer.lua',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-colorizer.lua-' .. '72a05f62c52241bc7441c820eb53946f92b2e6a4',
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
