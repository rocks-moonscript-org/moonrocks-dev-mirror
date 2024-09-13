local git_ref = '72baac9eb66d4b21e81a3ee7919b1699d266297f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/notomo/gesture.nvim'

rockspec_format = '3.0'
package = 'gesture.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Mouse gesture plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/notomo/gesture.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gesture.nvim-' .. '72baac9eb66d4b21e81a3ee7919b1699d266297f',
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
