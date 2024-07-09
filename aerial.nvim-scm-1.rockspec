local git_ref = 'db0af491ff13c18a966ce2f9ac7f5211aec000a7'
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
  dir = 'aerial.nvim-' .. 'db0af491ff13c18a966ce2f9ac7f5211aec000a7',
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
