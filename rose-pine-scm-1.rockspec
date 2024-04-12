local git_ref = '9cd7d8aad3606a95d733a45d16275eb7a5a836a3'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'neovim-' .. '9cd7d8aad3606a95d733a45d16275eb7a5a836a3',
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
