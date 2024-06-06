local git_ref = '4d22fe03554056de4325762add3e546c77e3a275'
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
  dir = 'nvim-spectre-' .. '4d22fe03554056de4325762add3e546c77e3a275',
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
