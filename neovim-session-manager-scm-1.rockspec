local git_ref = 'b3058f6ad6c69b20db3b375f7918ebd57e25aa4c'
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
  dir = 'neovim-session-manager-' .. 'b3058f6ad6c69b20db3b375f7918ebd57e25aa4c',
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
