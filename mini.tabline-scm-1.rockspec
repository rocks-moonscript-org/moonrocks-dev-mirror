local git_ref = '2316dd47e1e1f4a8e9255c9060acbee89bb26e59'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.tabline'

rockspec_format = '3.0'
package = 'mini.tabline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim tabline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.tabline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.tabline-' .. '2316dd47e1e1f4a8e9255c9060acbee89bb26e59',
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
