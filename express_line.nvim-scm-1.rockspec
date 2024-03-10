local git_ref = '30f04edb9647d9ea7c08d0bdbfad33faf5bcda57'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tjdevries/express_line.nvim'

rockspec_format = '3.0'
package = 'express_line.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'WIP: Statusline written in pure lua. Supports co-routines, functions and jobs.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tjdevries/express_line.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'express_line.nvim-' .. '30f04edb9647d9ea7c08d0bdbfad33faf5bcda57',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
