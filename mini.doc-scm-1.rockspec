local git_ref = 'bb73a3d1ff390f7e2740027ea2567017099a237c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.doc'

rockspec_format = '3.0'
package = 'mini.doc'
version = modrev ..'-'.. specrev

description = {
  summary = 'Generate Neovim help files. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.doc',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.doc-' .. 'bb73a3d1ff390f7e2740027ea2567017099a237c',
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
