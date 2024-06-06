local git_ref = 'a33f032491b990c2ec4e9aa34a023310f633a999'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tanvirtin/vgit.nvim'

rockspec_format = '3.0'
package = 'vgit.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Visual git plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tanvirtin/vgit.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vgit.nvim-' .. 'a33f032491b990c2ec4e9aa34a023310f633a999',
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
