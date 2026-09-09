local git_ref = 'bc7896bb314f11169ea5f82b312fa67340f736a4'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.statuscolumn'

rockspec_format = '3.0'
package = 'mini.statuscolumn'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim statuscolumn. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.statuscolumn',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.statuscolumn-' .. 'bc7896bb314f11169ea5f82b312fa67340f736a4',
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
