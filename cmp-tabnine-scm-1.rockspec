local git_ref = 'c0167cdc86c15e782c5461ee62aebee89231c2ed'
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
  dir = 'cmp-tabnine-' .. 'c0167cdc86c15e782c5461ee62aebee89231c2ed',
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
