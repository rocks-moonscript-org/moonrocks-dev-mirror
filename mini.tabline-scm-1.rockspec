local git_ref = '321d516d7ef9ab6c3dae60095d35877030905919'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.tabline'

rockspec_format = '3.0'
package = 'mini.tabline'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim tabline. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.tabline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.tabline-' .. '321d516d7ef9ab6c3dae60095d35877030905919',
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
