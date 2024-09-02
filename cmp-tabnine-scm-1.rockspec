local git_ref = '0f4bf271a8f1eb2c5add4dab712c67aa1f9ca7bd'
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
  dir = 'cmp-tabnine-' .. '0f4bf271a8f1eb2c5add4dab712c67aa1f9ca7bd',
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
