local git_ref = '31fbd369bbbeb53080c4b1ead9e76be322725ef5'
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
  dir = 'aerial.nvim-' .. '31fbd369bbbeb53080c4b1ead9e76be322725ef5',
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
