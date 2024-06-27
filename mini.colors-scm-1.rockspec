local git_ref = 'fc16cb499535c68310fa421d5739dfe246e08998'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.colors'

rockspec_format = '3.0'
package = 'mini.colors'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tweak and save any Neovim colorscheme. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.colors',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.colors-' .. 'fc16cb499535c68310fa421d5739dfe246e08998',
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
