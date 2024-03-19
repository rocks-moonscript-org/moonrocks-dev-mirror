local git_ref = '8578056a2226ed49fc608167edc143a87f75d809'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimtools/hydra.nvim'

rockspec_format = '3.0'
package = 'hydra.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Create custom submodes and menus',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimtools/hydra.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hydra.nvim-' .. '8578056a2226ed49fc608167edc143a87f75d809',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'syntax' } ,
}
