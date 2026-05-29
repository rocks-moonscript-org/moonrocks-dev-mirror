local git_ref = '6c4673116f249ce0e21098e5be4c4c05e7d3cc41'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/vladdoster/remember.nvim'

rockspec_format = '3.0'
package = 'remember.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A port of the Vim plugin vim-lastplace. It uses the same logic as vim-lastplace, but leverages the Neovim Lua API.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vladdoster/remember.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'remember.nvim-' .. '6c4673116f249ce0e21098e5be4c4c05e7d3cc41',
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
