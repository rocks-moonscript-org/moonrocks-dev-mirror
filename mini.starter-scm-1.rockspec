local git_ref = '4cfe09ee18390708fcdbe3bc6e7a4f4a06731db9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.starter'

rockspec_format = '3.0'
package = 'mini.starter'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim start screen. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.starter',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.starter-' .. '4cfe09ee18390708fcdbe3bc6e7a4f4a06731db9',
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
