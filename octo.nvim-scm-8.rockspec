local git_ref = '34e67cc2d247e9b9271e2b54baeb6d4f6d1035bb'
local modrev = 'scm'
local specrev = '8'

local repo_url = 'https://github.com/pwntester/octo.nvim'

rockspec_format = '3.0'
package = 'octo.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Edit and review GitHub issues and pull requests from the comfort of your favorite editor',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pwntester/octo.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'octo.nvim-' .. '34e67cc2d247e9b9271e2b54baeb6d4f6d1035bb',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc' } ,
}
