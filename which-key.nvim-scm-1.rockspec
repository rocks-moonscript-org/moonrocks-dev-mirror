local git_ref = 'a72d2482914d0ae3c5d24505c7bb91b834cf67d8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/which-key.nvim'

rockspec_format = '3.0'
package = 'which-key.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/which-key.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'which-key.nvim-' .. 'a72d2482914d0ae3c5d24505c7bb91b834cf67d8',
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
