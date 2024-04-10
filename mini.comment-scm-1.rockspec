local git_ref = '5707e22dd38f7b0d0ea7b273a43948fe203ff3a4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.comment'

rockspec_format = '3.0'
package = 'mini.comment'
version = modrev ..'-'.. specrev

description = {
  summary = 'Comment lines in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.comment',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.comment-' .. '5707e22dd38f7b0d0ea7b273a43948fe203ff3a4',
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
