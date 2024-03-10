local git_ref = 'd1550dc26729b7954f95269952e90471b838fa25'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ekickx/clipboard-image.nvim'

rockspec_format = '3.0'
package = 'clipboard-image.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim Lua plugin to paste image from clipboard.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ekickx/clipboard-image.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'clipboard-image.nvim-' .. 'd1550dc26729b7954f95269952e90471b838fa25',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
