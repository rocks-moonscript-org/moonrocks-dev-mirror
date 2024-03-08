local git_ref = 'f64963332f7fcb45c8dfcc243f682a9a0fb9935d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.colors'

rockspec_format = '3.0'
package = 'mini.colors'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tweak and save any Neovim colorscheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.colors',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.colors-' .. 'f64963332f7fcb45c8dfcc243f682a9a0fb9935d',
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
