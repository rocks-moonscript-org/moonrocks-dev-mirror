local git_ref = '8b04d0e0acc8565cfa4dd291a89a9212b7262633'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/saghen/blink.lib'

rockspec_format = '3.0'
package = 'blink.lib'
version = modrev ..'-'.. specrev

description = {
  summary = 'Shared library for blink.* Neovim plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/saghen/blink.lib',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'blink.lib-' .. '8b04d0e0acc8565cfa4dd291a89a9212b7262633',
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
