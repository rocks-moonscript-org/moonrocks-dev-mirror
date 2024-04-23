local git_ref = '7045e7cb0017d222122a1f6e5795e69754d8b9db'
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

dependencies = { 'lua >= 5.1', 'nvim-web-devicons', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'aerial.nvim-' .. '7045e7cb0017d222122a1f6e5795e69754d8b9db',
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
