local git_ref = '3c06deb40d01b0b0efc81cbe8423df1346dab2fd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/shellRaining/hlchunk.nvim'

rockspec_format = '3.0'
package = 'hlchunk.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'This is the lua implementation of nvim-hlchunk, you can use this neovim plugin to highlight your indent line and the current chunk (context) your cursor stayed',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/shellRaining/hlchunk.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hlchunk.nvim-' .. '3c06deb40d01b0b0efc81cbe8423df1346dab2fd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
