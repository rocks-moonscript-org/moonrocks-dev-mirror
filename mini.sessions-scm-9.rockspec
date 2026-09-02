local git_ref = '59b682b3208eefb5053a80dd3bc93ced69f363af'
local modrev = 'scm'
local specrev = '9'

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
  dir = 'mini.sessions-' .. '59b682b3208eefb5053a80dd3bc93ced69f363af',
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
