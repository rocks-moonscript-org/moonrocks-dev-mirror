local git_ref = 'f5b54f3605d9ed709521db1827b8686dea283622'
local modrev = 'scm'
local specrev = '10'

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
  dir = 'refactoring.nvim-' .. 'f5b54f3605d9ed709521db1827b8686dea283622',
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
