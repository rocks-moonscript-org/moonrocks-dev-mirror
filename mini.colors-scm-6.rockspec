local git_ref = '8f3a7aefe98c2742ac7d54166b961bfc85b893dc'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.colors'

rockspec_format = '3.0'
package = 'mini.colors'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tweak and save any Neovim colorscheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.colors',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.colors-' .. '8f3a7aefe98c2742ac7d54166b961bfc85b893dc',
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
