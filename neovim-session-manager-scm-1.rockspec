local git_ref = 'a0b9d25154be573bc0f99877afb3f57cf881cce7'
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
  dir = 'neovim-session-manager-' .. 'a0b9d25154be573bc0f99877afb3f57cf881cce7',
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
