local git_ref = 'a7f5953dbfbe7069568f2d0ed23a9709a56725ab'
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
  dir = 'neoscroll.nvim-' .. 'a7f5953dbfbe7069568f2d0ed23a9709a56725ab',
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
