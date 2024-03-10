local git_ref = '3469ee3e54e676deafd9dc29beddfde3643b4d0d'
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
  dir = 'vim-moonfly-colors-' .. '3469ee3e54e676deafd9dc29beddfde3643b4d0d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
