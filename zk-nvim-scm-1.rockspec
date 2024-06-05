local git_ref = '1f331d994d90f1dc93d023508951be437d19813e'
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
  dir = 'zk-nvim-' .. '1f331d994d90f1dc93d023508951be437d19813e',
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
