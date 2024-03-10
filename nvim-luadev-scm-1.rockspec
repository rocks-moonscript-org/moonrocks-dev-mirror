local git_ref = '3ba0c02c378503739f1fdb95cff3ea2aad48db3e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/bfredl/nvim-luadev'

rockspec_format = '3.0'
package = 'nvim-luadev'
version = modrev ..'-'.. specrev

description = {
  summary = 'REPL/debug console for nvim lua plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/bfredl/nvim-luadev',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-luadev-' .. '3ba0c02c378503739f1fdb95cff3ea2aad48db3e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
