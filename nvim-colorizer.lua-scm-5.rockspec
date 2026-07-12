local git_ref = '149fbd9f5e25511b0a8bad3ccecd43d1bc584f86'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'nvim-colorizer.lua-' .. '149fbd9f5e25511b0a8bad3ccecd43d1bc584f86',
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
