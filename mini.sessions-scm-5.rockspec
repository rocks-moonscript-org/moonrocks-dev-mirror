local git_ref = '7cb2945ccc11323b7ca19796eb42618493e1dc12'
local modrev = 'scm'
local specrev = '5'

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
  dir = 'mini.sessions-' .. '7cb2945ccc11323b7ca19796eb42618493e1dc12',
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
