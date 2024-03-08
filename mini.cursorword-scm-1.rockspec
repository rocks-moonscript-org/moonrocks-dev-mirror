local git_ref = 'c20c71e00138b9b93caec037c228393a48a20818'
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
  dir = 'mini.cursorword-' .. 'c20c71e00138b9b93caec037c228393a48a20818',
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
