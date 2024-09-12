local git_ref = '221260589ab28c29af444a0809248a1369f733ca'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.hues'

rockspec_format = '3.0'
package = 'mini.hues'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Generate configurable color scheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.hues',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hues-' .. '221260589ab28c29af444a0809248a1369f733ca',
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
