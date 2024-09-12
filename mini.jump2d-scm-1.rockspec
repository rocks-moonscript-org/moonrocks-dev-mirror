local git_ref = 'b0963aa2ec80b4b1ed1c7f93d9c969bb3f4b65b6'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.jump2d'

rockspec_format = '3.0'
package = 'mini.jump2d'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump within visible lines. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.jump2d',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump2d-' .. 'b0963aa2ec80b4b1ed1c7f93d9c969bb3f4b65b6',
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
