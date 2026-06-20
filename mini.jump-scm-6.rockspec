local git_ref = '7dc394e21a59ecfd786242314dc4a68619de216d'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.jump'

rockspec_format = '3.0'
package = 'mini.jump'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump to next/previous single character. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.jump',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump-' .. '7dc394e21a59ecfd786242314dc4a68619de216d',
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
