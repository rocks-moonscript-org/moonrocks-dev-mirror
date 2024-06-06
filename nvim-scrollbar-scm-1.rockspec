local git_ref = 'd09f14aa16c9f2748e77008f9da7b1f76e4e7b85'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/petertriho/nvim-scrollbar'

rockspec_format = '3.0'
package = 'nvim-scrollbar'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extensible Neovim Scrollbar',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/petertriho/nvim-scrollbar',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-scrollbar-' .. 'd09f14aa16c9f2748e77008f9da7b1f76e4e7b85',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
