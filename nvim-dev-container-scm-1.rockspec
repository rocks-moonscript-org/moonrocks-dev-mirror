local git_ref = 'c172461b7965e565d678f780e3dea92dc42c30e6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/esensar/nvim-dev-container'

rockspec_format = '3.0'
package = 'nvim-dev-container'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim dev container support - Mirror of https://codeberg.org/esensar/nvim-dev-container',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/esensar/nvim-dev-container',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dev-container-' .. 'c172461b7965e565d678f780e3dea92dc42c30e6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
