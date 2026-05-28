local git_ref = '43bd6cf1c3ccdea46d403c32dbc4629fa6afa09d'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.clue'

rockspec_format = '3.0'
package = 'mini.clue'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show next key clues in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.clue',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.clue-' .. '43bd6cf1c3ccdea46d403c32dbc4629fa6afa09d',
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
