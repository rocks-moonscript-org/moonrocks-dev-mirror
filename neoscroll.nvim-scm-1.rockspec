local git_ref = '4e0428a41c6ec191df543fc95349f6e1c598e53f'
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
  dir = 'neoscroll.nvim-' .. '4e0428a41c6ec191df543fc95349f6e1c598e53f',
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
