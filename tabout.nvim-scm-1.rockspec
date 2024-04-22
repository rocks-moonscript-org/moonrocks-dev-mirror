local git_ref = 'c442ae7788c30dbd41d259c51df4046cb8269a96'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/abecodes/tabout.nvim'

rockspec_format = '3.0'
package = 'tabout.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tabout plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/abecodes/tabout.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabout.nvim-' .. 'c442ae7788c30dbd41d259c51df4046cb8269a96',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
