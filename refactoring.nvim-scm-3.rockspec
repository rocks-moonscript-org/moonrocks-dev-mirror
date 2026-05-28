local git_ref = 'c12b0e17e9d2ac67f9f4c4e7636d78798a70463f'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'refactoring.nvim-' .. 'c12b0e17e9d2ac67f9f4c4e7636d78798a70463f',
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
