local git_ref = '629f7ddb071faf8eba77c5c56a295a0a206df94c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.clue'

rockspec_format = '3.0'
package = 'mini.clue'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show next key clues in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.clue',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.clue-' .. '629f7ddb071faf8eba77c5c56a295a0a206df94c',
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
