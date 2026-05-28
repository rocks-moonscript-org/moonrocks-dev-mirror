local git_ref = 'e645f69b93eede43fb644bb1a0b1db3eef1108a3'
local modrev = 'scm'
local specrev = '2'

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

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-git-' .. 'e645f69b93eede43fb644bb1a0b1db3eef1108a3',
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
