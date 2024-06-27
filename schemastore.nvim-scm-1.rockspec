local git_ref = '73594484edfa33ec9301e42c6c7a4af25c48266f'
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
  dir = 'SchemaStore.nvim-' .. '73594484edfa33ec9301e42c6c7a4af25c48266f',
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
