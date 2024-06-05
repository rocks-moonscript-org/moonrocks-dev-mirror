local git_ref = '5c656080cc0be1d60c4b7b6e0d4b1ab7ed2d902b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.jump'

rockspec_format = '3.0'
package = 'mini.jump'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump to next/previous single character. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.jump',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump-' .. '5c656080cc0be1d60c4b7b6e0d4b1ab7ed2d902b',
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
