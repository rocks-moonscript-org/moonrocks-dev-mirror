local git_ref = '3ca87528ebe2720ba63a2cc9d2d80dac12bfb013'
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
  dir = 'ime.nvim-' .. '3ca87528ebe2720ba63a2cc9d2d80dac12bfb013',
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
