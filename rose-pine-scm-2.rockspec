local git_ref = '9504524e5ed0e326534698f637f9d038ba4cd0ee'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/rose-pine/neovim'

rockspec_format = '3.0'
package = 'rose-pine'
version = modrev ..'-'.. specrev

description = {
  summary = 'Soho vibes for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rose-pine/neovim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-' .. '9504524e5ed0e326534698f637f9d038ba4cd0ee',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
