local git_ref = '7f89ca0d2396718078780c802fa18738533a43f1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/bluz71/vim-moonfly-colors'

rockspec_format = '3.0'
package = 'vim-moonfly-colors'
version = modrev ..'-'.. specrev

description = {
  summary = 'A dark charcoal theme for modern Neovim & classic Vim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/bluz71/vim-moonfly-colors',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-moonfly-colors-' .. '7f89ca0d2396718078780c802fa18738533a43f1',
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
