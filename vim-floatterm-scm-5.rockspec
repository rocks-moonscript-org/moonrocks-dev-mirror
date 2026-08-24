local git_ref = '0e8e95f7be74b900bc7d3bc54d9b65211b264ace'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/voldikss/vim-floaterm'

rockspec_format = '3.0'
package = 'vim-floatterm'
version = modrev ..'-'.. specrev

description = {
  summary = '💻 Terminal manager for (neo)vim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/voldikss/vim-floaterm',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-floaterm-' .. '0e8e95f7be74b900bc7d3bc54d9b65211b264ace',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
