local git_ref = '0e2e116ade87034b2983ba0d5460af731fb1fc28'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/lspsaga.nvim'

rockspec_format = '3.0'
package = 'lspsaga.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Improve neovim LSP experience.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/lspsaga.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lspsaga.nvim-' .. '0e2e116ade87034b2983ba0d5460af731fb1fc28',
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
