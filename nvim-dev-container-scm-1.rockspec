local git_ref = 'e18cefb8128bbc43db5d52939e76cbd7e6797d3c'
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

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dev-container-' .. 'e18cefb8128bbc43db5d52939e76cbd7e6797d3c',
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
