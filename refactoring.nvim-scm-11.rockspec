local git_ref = '0698142cfe31deb3670d0930214e4cac103d46d5'
local modrev = 'scm'
local specrev = '11'

local repo_url = 'https://github.com/ThePrimeagen/refactoring.nvim'

rockspec_format = '3.0'
package = 'refactoring.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The Refactoring library based off the Refactoring book by Martin Fowler',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ThePrimeagen/refactoring.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'refactoring.nvim-' .. '0698142cfe31deb3670d0930214e4cac103d46d5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'none',
  copy_directories = { 'doc', 'plugin', 'queries' } ,
}
