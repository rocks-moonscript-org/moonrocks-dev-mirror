local git_ref = 'dbee3da96d3cf68ff311d8f324a9b236a08ad429'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.deps'

rockspec_format = '3.0'
package = 'mini.deps'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git plugin manager for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.deps',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.deps-' .. 'dbee3da96d3cf68ff311d8f324a9b236a08ad429',
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
