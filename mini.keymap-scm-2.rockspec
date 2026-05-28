local git_ref = '14f4cf1058bd3458d4cccd6a4587b6ebb1d43385'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.keymap'

rockspec_format = '3.0'
package = 'mini.keymap'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Special key mappings. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.keymap',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.keymap-' .. '14f4cf1058bd3458d4cccd6a4587b6ebb1d43385',
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
