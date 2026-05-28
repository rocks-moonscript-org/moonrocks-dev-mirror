local git_ref = 'c96a1d1284b37ba2431092981a9d58f8c71a4fc3'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.sessions'

rockspec_format = '3.0'
package = 'mini.sessions'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Session management. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.sessions',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.sessions-' .. 'c96a1d1284b37ba2431092981a9d58f8c71a4fc3',
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
