local git_ref = 'a59a9b7fb0a42cbcf022938ee5f0724320b66f63'
local modrev = 'scm'
local specrev = '36'

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
  dir = 'mini.nvim-' .. 'a59a9b7fb0a42cbcf022938ee5f0724320b66f63',
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
