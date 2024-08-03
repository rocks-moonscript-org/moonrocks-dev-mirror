local git_ref = 'c238d4d003a196e711f29e07748f91d0cbec6ccb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/ime.nvim'

rockspec_format = '3.0'
package = 'ime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'auto switch IME for neovim.',
  detailed = '',
  labels = { 'fcitx5', 'ibus', 'lua', 'neovim', 'rime', 'vim-plugin' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/ime.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'dbus_proxy', 'lua-cjson' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ime.nvim-' .. 'c238d4d003a196e711f29e07748f91d0cbec6ccb',
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
