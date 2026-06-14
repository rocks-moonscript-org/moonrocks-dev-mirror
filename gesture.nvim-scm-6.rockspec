local git_ref = 'eb1e0753837371205df04ff2427b27c0cb1047d5'
local modrev = 'scm'
local specrev = '6'

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
  dir = 'gesture.nvim-' .. 'eb1e0753837371205df04ff2427b27c0cb1047d5',
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
