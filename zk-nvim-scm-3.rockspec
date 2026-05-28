local git_ref = 'bc3b39374b25fad977cecc936588cb060f15a773'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'zk-nvim-' .. 'bc3b39374b25fad977cecc936588cb060f15a773',
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
