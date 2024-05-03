local git_ref = 'bcfc0a2e01def5019aa14fac2fc6de20dedb6d3d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/oil.nvim'

rockspec_format = '3.0'
package = 'oil.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim file explorer: edit your filesystem like a buffer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/oil.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oil.nvim-' .. 'bcfc0a2e01def5019aa14fac2fc6de20dedb6d3d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}
