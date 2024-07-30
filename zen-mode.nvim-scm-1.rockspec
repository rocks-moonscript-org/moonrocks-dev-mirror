local git_ref = '29b292bdc58b76a6c8f294c961a8bf92c5a6ebd6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/zen-mode.nvim'

rockspec_format = '3.0'
package = 'zen-mode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Distraction-free coding for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/zen-mode.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'zen-mode.nvim-' .. '29b292bdc58b76a6c8f294c961a8bf92c5a6ebd6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
