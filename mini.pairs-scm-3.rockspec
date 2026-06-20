local git_ref = '4a014143fcb4e9df26198ccb3ecff3b9e77a048c'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.pairs'

rockspec_format = '3.0'
package = 'mini.pairs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim autopairs. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.pairs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.pairs-' .. '4a014143fcb4e9df26198ccb3ecff3b9e77a048c',
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
