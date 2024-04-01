local git_ref = 'd52aae40ee86b62960c31a003352ddfc9e31c8d2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tzachar/cmp-tabnine'

rockspec_format = '3.0'
package = 'cmp-tabnine'
version = modrev ..'-'.. specrev

description = {
  summary = 'TabNine plugin for hrsh7th/nvim-cmp',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tzachar/cmp-tabnine',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-tabnine-' .. 'd52aae40ee86b62960c31a003352ddfc9e31c8d2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc' } ,
}
