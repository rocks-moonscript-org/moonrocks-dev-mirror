local git_ref = '1d23be1165c373a6026e42f3b3a5100126eaf81d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-pack/nvim-spectre'

rockspec_format = '3.0'
package = 'nvim-spectre'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find the enemy and replace them with dark power.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-pack/nvim-spectre',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-spectre-' .. '1d23be1165c373a6026e42f3b3a5100126eaf81d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
