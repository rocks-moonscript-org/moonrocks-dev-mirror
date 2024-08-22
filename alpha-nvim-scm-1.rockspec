local git_ref = 'b6f4129302db197a7249e67a90de3f2b676de13e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/goolord/alpha-nvim'

rockspec_format = '3.0'
package = 'alpha-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lua powered greeter like vim-startify / dashboard-nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/goolord/alpha-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'alpha-nvim-' .. 'b6f4129302db197a7249e67a90de3f2b676de13e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
