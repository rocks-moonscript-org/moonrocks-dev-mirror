local git_ref = 'ec67d4b5370094b923dfcf6b09b39142f2964861'
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
  dir = 'nvim-spectre-' .. 'ec67d4b5370094b923dfcf6b09b39142f2964861',
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
