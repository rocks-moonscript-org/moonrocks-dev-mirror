local git_ref = 'c3eaa29d7e875b3a80b4db4067a04726646ce2db'
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
  dir = 'mini.clue-' .. 'c3eaa29d7e875b3a80b4db4067a04726646ce2db',
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
