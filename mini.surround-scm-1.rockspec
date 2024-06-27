local git_ref = 'af280fc18792b4d142aab4c1638a8949a38ff33a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.surround'

rockspec_format = '3.0'
package = 'mini.surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim surround actions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.surround-' .. 'af280fc18792b4d142aab4c1638a8949a38ff33a',
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
