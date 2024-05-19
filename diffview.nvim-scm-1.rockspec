local git_ref = '9bdd5537575c2ea7925b71ae06585b934beea13d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/sindrets/diffview.nvim'

rockspec_format = '3.0'
package = 'diffview.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Single tabpage interface for easily cycling through diffs for all modified files for any git rev.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sindrets/diffview.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'diffview.nvim-' .. '9bdd5537575c2ea7925b71ae06585b934beea13d',
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
