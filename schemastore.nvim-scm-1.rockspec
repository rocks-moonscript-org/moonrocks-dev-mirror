local git_ref = '2ef728ff7e790431f1f71052bfd4c5568157e110'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/b0o/SchemaStore.nvim'

rockspec_format = '3.0'
package = 'schemastore.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'JSON schemas for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/b0o/SchemaStore.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'SchemaStore.nvim-' .. '2ef728ff7e790431f1f71052bfd4c5568157e110',
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
