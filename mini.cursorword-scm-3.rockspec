local git_ref = 'a01471856e462144ea53972f22a67e790be68ee6'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'mini.cursorword-' .. 'a01471856e462144ea53972f22a67e790be68ee6',
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
