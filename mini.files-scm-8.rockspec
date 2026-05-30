local git_ref = '17b58c3227cffe47ded884c234aa61dab492363a'
local modrev = 'scm'
local specrev = '8'

local repo_url = 'https://github.com/nvim-mini/mini.files'

rockspec_format = '3.0'
package = 'mini.files'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate and manipulate the file system in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.files',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.files-' .. '17b58c3227cffe47ded884c234aa61dab492363a',
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
