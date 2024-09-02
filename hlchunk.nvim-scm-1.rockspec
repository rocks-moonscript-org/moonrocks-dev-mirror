local git_ref = 'a33794db6d983328a89431ce11316ddaffe422c5'
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
  dir = 'hlchunk.nvim-' .. 'a33794db6d983328a89431ce11316ddaffe422c5',
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
