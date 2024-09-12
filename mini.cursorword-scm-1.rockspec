local git_ref = '7d1b38a17834acbbc4feff8e42aedc4ed0c6ff06'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.cursorword'

rockspec_format = '3.0'
package = 'mini.cursorword'
version = modrev ..'-'.. specrev

description = {
  summary = 'Autohighlight word under cursor for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.cursorword',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.cursorword-' .. '7d1b38a17834acbbc4feff8e42aedc4ed0c6ff06',
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
