local git_ref = '26cf934f872e2fbfab55d572c5eb7dad0e82238e'
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

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabout.nvim-' .. '26cf934f872e2fbfab55d572c5eb7dad0e82238e',
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
