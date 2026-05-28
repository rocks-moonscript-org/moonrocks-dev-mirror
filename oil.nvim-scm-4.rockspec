local git_ref = 'dc151f0e9c7cebb66b8123c2d6edd6649ff2227d'
local modrev = 'scm'
local specrev = '4'

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

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oil.nvim-' .. 'dc151f0e9c7cebb66b8123c2d6edd6649ff2227d',
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
