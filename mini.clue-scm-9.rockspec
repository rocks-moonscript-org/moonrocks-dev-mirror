local git_ref = '1c136d62729c8c3b0c2d91379bc37efac15d916e'
local modrev = 'scm'
local specrev = '9'

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
  dir = 'mini.clue-' .. '1c136d62729c8c3b0c2d91379bc37efac15d916e',
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
