local git_ref = 'b2ac6522f7a54b475d9fad711b938eefc6d3d0a6'
local modrev = 'scm'
local specrev = '33'

local repo_url = 'https://github.com/nvim-mini/mini.nvim'

rockspec_format = '3.0'
package = 'mini.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Library of 35+ independent Lua modules improving overall Neovim (version 0.7 and higher) experience with minimal effort (full suite)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.nvim-' .. 'b2ac6522f7a54b475d9fad711b938eefc6d3d0a6',
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
