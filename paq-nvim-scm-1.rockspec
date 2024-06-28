local git_ref = 'e01ed080f485fcb4041ffdd4cb0c2b87326abeea'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/savq/paq-nvim'

rockspec_format = '3.0'
package = 'paq-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim package manager',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/savq/paq-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'paq-nvim-' .. 'e01ed080f485fcb4041ffdd4cb0c2b87326abeea',
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
