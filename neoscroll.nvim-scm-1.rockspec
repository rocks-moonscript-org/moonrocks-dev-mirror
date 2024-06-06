local git_ref = 'a731f66f1d39ec6175fd201c5bf849e54abda99c'
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
  dir = 'neoscroll.nvim-' .. 'a731f66f1d39ec6175fd201c5bf849e54abda99c',
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
