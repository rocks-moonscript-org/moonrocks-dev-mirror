local git_ref = '39a4bb4980836109beae941a883347badbaca3b0'
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
  dir = 'mini.jump2d-' .. '39a4bb4980836109beae941a883347badbaca3b0',
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
