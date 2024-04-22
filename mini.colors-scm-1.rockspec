local git_ref = '7b8e567d69aeae68629c46d6f67a7da9b63054bd'
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
  dir = 'mini.colors-' .. '7b8e567d69aeae68629c46d6f67a7da9b63054bd',
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
