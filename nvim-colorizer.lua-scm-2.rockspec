local git_ref = '5cfe7fffbd01e17b3c1e14af85d5febdef88bd8c'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'nvim-colorizer.lua-' .. '5cfe7fffbd01e17b3c1e14af85d5febdef88bd8c',
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
