local git_ref = 'a4e82e8e4c7b460b72222ccdd3fcc6ee84696f01'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.test'

rockspec_format = '3.0'
package = 'mini.test'
version = modrev ..'-'.. specrev

description = {
  summary = 'Test neovim plugins. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.test',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.test-' .. 'a4e82e8e4c7b460b72222ccdd3fcc6ee84696f01',
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
