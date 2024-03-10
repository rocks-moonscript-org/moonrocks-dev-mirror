local git_ref = '9abe4e986e924fc54a972c1b0ff52b65a0622624'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/laytan/cloak.nvim'

rockspec_format = '3.0'
package = 'cloak.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Cloak allows you to overlay *\'s over defined patterns in defined files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/laytan/cloak.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cloak.nvim-' .. '9abe4e986e924fc54a972c1b0ff52b65a0622624',
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
