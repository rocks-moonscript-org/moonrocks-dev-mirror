local git_ref = '8bcf893eb3871bc87b42adffe2fb9b0b7dc9d328'
local modrev = 'scm'
local specrev = '16'

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
  dir = 'refactoring.nvim-' .. '8bcf893eb3871bc87b42adffe2fb9b0b7dc9d328',
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
