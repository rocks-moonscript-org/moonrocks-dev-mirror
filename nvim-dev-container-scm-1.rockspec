local git_ref = 'b402695e7e53e6e576aeb5e460655dc4faa1cd8c'
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
  dir = 'nvim-dev-container-' .. 'b402695e7e53e6e576aeb5e460655dc4faa1cd8c',
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
