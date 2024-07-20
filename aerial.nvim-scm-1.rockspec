local git_ref = '4e77964569ef47a70f9bb76c668dcfea2d089d5a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/aerial.nvim'

rockspec_format = '3.0'
package = 'aerial.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for a code outline window',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/aerial.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'aerial.nvim-' .. '4e77964569ef47a70f9bb76c668dcfea2d089d5a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'queries' } ,
}
