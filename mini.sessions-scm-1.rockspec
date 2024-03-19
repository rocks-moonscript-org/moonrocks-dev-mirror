local git_ref = 'af78a5723c83c97470c1d7be4ac9ff5d04defc9a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.sessions'

rockspec_format = '3.0'
package = 'mini.sessions'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Session management. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.sessions',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.sessions-' .. 'af78a5723c83c97470c1d7be4ac9ff5d04defc9a',
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
