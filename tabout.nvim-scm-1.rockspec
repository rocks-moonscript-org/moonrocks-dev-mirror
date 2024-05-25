local git_ref = '3d7fbc7f5e91ef0f96b4d787c78ad9f8820de3ec'
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
  dir = 'tabout.nvim-' .. '3d7fbc7f5e91ef0f96b4d787c78ad9f8820de3ec',
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
