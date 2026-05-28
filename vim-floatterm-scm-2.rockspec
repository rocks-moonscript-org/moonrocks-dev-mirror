local git_ref = 'bb4ba7952e906408e1f83b215f55ffe57efcade6'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'vim-floaterm-' .. 'bb4ba7952e906408e1f83b215f55ffe57efcade6',
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
