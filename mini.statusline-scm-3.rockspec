local git_ref = '7091f554d7d26b5d55f4c937634da53ba277a44a'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.statusline'

rockspec_format = '3.0'
package = 'mini.statusline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim statusline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.statusline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.statusline-' .. '7091f554d7d26b5d55f4c937634da53ba277a44a',
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
