local git_ref = 'c082e1e943acec28d95aa05325097426e612047f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/gen740/SmoothCursor.nvim'

rockspec_format = '3.0'
package = 'smoothcursor.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Displays a sub-cursor to show scroll direction.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/gen740/SmoothCursor.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'SmoothCursor.nvim-' .. 'c082e1e943acec28d95aa05325097426e612047f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
