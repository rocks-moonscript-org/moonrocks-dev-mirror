local git_ref = 'b5be271ebe862ca0570e450976799554e585d16e'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nvim-mini/mini.basics'

rockspec_format = '3.0'
package = 'mini.basics'
version = modrev ..'-'.. specrev

description = {
  summary = 'Common configuration presets for Neovim Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.basics',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.basics-' .. 'b5be271ebe862ca0570e450976799554e585d16e',
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
