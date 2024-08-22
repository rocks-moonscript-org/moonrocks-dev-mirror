local git_ref = '50d526dff0f6bc441b51fc269d9fdc99a50c76af'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/petertriho/cmp-git'

rockspec_format = '3.0'
package = 'cmp-git'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git source for nvim-cmp',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/petertriho/cmp-git',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-git-' .. '50d526dff0f6bc441b51fc269d9fdc99a50c76af',
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
