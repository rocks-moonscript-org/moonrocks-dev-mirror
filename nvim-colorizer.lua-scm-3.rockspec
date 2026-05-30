local git_ref = '4a59a37498ef19e25946878f1ac1032ed947ac9a'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'nvim-colorizer.lua-' .. '4a59a37498ef19e25946878f1ac1032ed947ac9a',
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
