local git_ref = 'ad1d1365c9189d89797fe8d559677d5f55dc2830'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/f-person/git-blame.nvim'

rockspec_format = '3.0'
package = 'git-blame.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git Blame plugin for Neovim written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/f-person/git-blame.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git-blame.nvim-' .. 'ad1d1365c9189d89797fe8d559677d5f55dc2830',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
