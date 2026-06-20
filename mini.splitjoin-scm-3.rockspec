local git_ref = '4a0e6f5ea83148f6884eed03f287f94c3f22915d'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.splitjoin'

rockspec_format = '3.0'
package = 'mini.splitjoin'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Split and join arguments. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.splitjoin',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.splitjoin-' .. '4a0e6f5ea83148f6884eed03f287f94c3f22915d',
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
