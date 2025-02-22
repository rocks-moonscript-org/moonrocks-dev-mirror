local git_ref = '05f9ec07534ce8e2bf797c05c0a8bd826d9d24a2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini-git'

rockspec_format = '3.0'
package = 'mini.git'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git integration for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini-git',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini-git-' .. '05f9ec07534ce8e2bf797c05c0a8bd826d9d24a2',
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
