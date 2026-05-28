local git_ref = '4980ccc6de5f361fc9da116240ce7592e7d9a53a'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/bluz71/vim-nightfly-colors'

rockspec_format = '3.0'
package = 'vim-nightfly-colors'
version = modrev ..'-'.. specrev

description = {
  summary = 'A dark midnight theme for modern Neovim & classic Vim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/bluz71/vim-nightfly-colors',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-nightfly-colors-' .. '4980ccc6de5f361fc9da116240ce7592e7d9a53a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'autoload', 'colors', 'doc' } ,
}
