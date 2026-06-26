local git_ref = 'db0fac0a25884183650352ccf92b362a41ed2e9c'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'mini.pairs-' .. 'db0fac0a25884183650352ccf92b362a41ed2e9c',
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
