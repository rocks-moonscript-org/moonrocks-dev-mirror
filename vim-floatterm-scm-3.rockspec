local git_ref = 'cd3fb987a85ba82034e84ed320cfb149cb296bf4'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'vim-floaterm-' .. 'cd3fb987a85ba82034e84ed320cfb149cb296bf4',
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
