local git_ref = '671a412613b19f790dd534acff7b26cdb06a72f8'
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
  dir = 'gesture.nvim-' .. '671a412613b19f790dd534acff7b26cdb06a72f8',
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
