local git_ref = 'fb0962b75a680561f94cae0588b8da92ea8d2fae'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/zk-org/zk-nvim'

rockspec_format = '3.0'
package = 'zk-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim extension for zk',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/zk-org/zk-nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zk-nvim-' .. 'fb0962b75a680561f94cae0588b8da92ea8d2fae',
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
