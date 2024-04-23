local git_ref = 'b9603f18496bc3ca07e6bd474607081af709e750'
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
  dir = 'cmp-git-' .. 'b9603f18496bc3ca07e6bd474607081af709e750',
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
