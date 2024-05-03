local git_ref = '6385df705c3c93f24bdabba4e88336c194dcfb45'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.misc'

rockspec_format = '3.0'
package = 'mini.misc'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Miscellaneous functions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.misc',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.misc-' .. '6385df705c3c93f24bdabba4e88336c194dcfb45',
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
