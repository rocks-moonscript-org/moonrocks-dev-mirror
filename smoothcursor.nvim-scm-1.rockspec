local git_ref = '150a4943458014149db4bbc7e292c263aa98dede'
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
  dir = 'SmoothCursor.nvim-' .. '150a4943458014149db4bbc7e292c263aa98dede',
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
