local git_ref = 'fdad87bf545aec5210ca9a2c49fddf6284d72d1e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.hipatterns'

rockspec_format = '3.0'
package = 'mini.hipatterns'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Highlight patterns in text. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.hipatterns',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hipatterns-' .. 'fdad87bf545aec5210ca9a2c49fddf6284d72d1e',
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
