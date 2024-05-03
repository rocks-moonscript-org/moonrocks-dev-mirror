local git_ref = '3157df3aaf38f5b040a56fd02c8efb05a043e5ae'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.extra'

rockspec_format = '3.0'
package = 'mini.extra'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extra \'mini.nvim\' functionality. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.extra',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.extra-' .. '3157df3aaf38f5b040a56fd02c8efb05a043e5ae',
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
