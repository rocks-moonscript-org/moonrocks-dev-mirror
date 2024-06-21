local git_ref = '4516612fe98ff56ae0415a259ff6361a89419b0a'
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
  dir = 'diffview.nvim-' .. '4516612fe98ff56ae0415a259ff6361a89419b0a',
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
