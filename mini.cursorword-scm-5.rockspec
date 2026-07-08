local git_ref = 'd06a70d2779851b2119459943312a4215039b153'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nvim-mini/mini.cursorword'

rockspec_format = '3.0'
package = 'mini.cursorword'
version = modrev ..'-'.. specrev

description = {
  summary = 'Autohighlight word under cursor for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.cursorword',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.cursorword-' .. 'd06a70d2779851b2119459943312a4215039b153',
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
