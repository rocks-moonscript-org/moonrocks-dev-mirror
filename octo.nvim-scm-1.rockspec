local git_ref = '27d6fd6ad2f2f59330724d6ea5c751f0c3ec96e6'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'octo.nvim-' .. '27d6fd6ad2f2f59330724d6ea5c751f0c3ec96e6',
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
