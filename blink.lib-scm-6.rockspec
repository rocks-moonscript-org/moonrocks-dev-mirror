local git_ref = 'f55df8a6e0a7acccf45ef0ffbb4ce46110fcf7d0'
local modrev = 'scm'
local specrev = '6'

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
  dir = 'blink.lib-' .. 'f55df8a6e0a7acccf45ef0ffbb4ce46110fcf7d0',
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
