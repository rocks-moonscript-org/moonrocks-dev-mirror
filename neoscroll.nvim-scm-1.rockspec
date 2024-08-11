local git_ref = '532dcc8cea4287c4cad6bb77532989a8217cfc7b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/karb94/neoscroll.nvim'

rockspec_format = '3.0'
package = 'neoscroll.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Smooth scrolling neovim plugin written in lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/karb94/neoscroll.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neoscroll.nvim-' .. '532dcc8cea4287c4cad6bb77532989a8217cfc7b',
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
