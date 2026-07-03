local git_ref = 'caef024b4b59ecd0446f9151a056068872882a19'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/nvim-mini/mini.hues'

rockspec_format = '3.0'
package = 'mini.hues'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Generate configurable color scheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.hues',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hues-' .. 'caef024b4b59ecd0446f9151a056068872882a19',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
