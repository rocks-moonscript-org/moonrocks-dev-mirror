local git_ref = '8d8bddb8814c3e7e62d80dda65a9876f97eb699c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Mofiqul/dracula.nvim'

rockspec_format = '3.0'
package = 'dracula.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Dracula colorscheme for neovim written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Mofiqul/dracula.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dracula.nvim-' .. '8d8bddb8814c3e7e62d80dda65a9876f97eb699c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
