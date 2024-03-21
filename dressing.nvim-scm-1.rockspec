local git_ref = '18e5beb3845f085b6a33c24112b37988f3f93c06'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/dressing.nvim'

rockspec_format = '3.0'
package = 'dressing.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to improve the default vim.ui interfaces',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/dressing.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dressing.nvim-' .. '18e5beb3845f085b6a33c24112b37988f3f93c06',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
