local git_ref = '35c154a4b904cbe2aa7acce00a8c1c54a8831780'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Shatur/neovim-session-manager'

rockspec_format = '3.0'
package = 'neovim-session-manager'
version = modrev ..'-'.. specrev

description = {
  summary = 'A simple wrapper around :mksession.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Shatur/neovim-session-manager',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-session-manager-' .. '35c154a4b904cbe2aa7acce00a8c1c54a8831780',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
