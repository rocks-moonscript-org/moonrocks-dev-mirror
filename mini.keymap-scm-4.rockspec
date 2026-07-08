local git_ref = '2c0c7980512f72fdc221f1812b9f8b4d7ab07127'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'mini.keymap-' .. '2c0c7980512f72fdc221f1812b9f8b4d7ab07127',
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
