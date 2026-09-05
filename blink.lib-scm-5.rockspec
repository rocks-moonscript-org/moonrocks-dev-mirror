local git_ref = 'e12366919e3447e4227d61e2ce99e2374de76d6a'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'blink.lib-' .. 'e12366919e3447e4227d61e2ce99e2374de76d6a',
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
