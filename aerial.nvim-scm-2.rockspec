local git_ref = '31688ff171d0a113b07b20a365199fb04a7be409'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'aerial.nvim-' .. '31688ff171d0a113b07b20a365199fb04a7be409',
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
