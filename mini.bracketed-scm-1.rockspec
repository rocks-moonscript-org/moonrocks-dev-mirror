local git_ref = '072d50801d8d4aaeb4b9765fa35c61639e0cff6b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.bracketed'

rockspec_format = '3.0'
package = 'mini.bracketed'
version = modrev ..'-'.. specrev

description = {
  summary = 'Go forward/backward in Neovim with square brackets Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.bracketed',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.bracketed-' .. '072d50801d8d4aaeb4b9765fa35c61639e0cff6b',
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
