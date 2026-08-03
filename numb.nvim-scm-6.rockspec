local git_ref = '36260c446465b1303b0b1922c722904791bdb03f'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nacro90/numb.nvim'

rockspec_format = '3.0'
package = 'numb.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Peek lines just when you intend',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nacro90/numb.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'numb.nvim-' .. '36260c446465b1303b0b1922c722904791bdb03f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
