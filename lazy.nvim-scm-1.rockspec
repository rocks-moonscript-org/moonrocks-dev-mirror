local git_ref = '6a423278a10ff7b1a76795275111d01632851c48'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/lazy.nvim'

rockspec_format = '3.0'
package = 'lazy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A modern plugin manager for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/lazy.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lazy.nvim-' .. '6a423278a10ff7b1a76795275111d01632851c48',
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
