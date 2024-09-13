local git_ref = 'aa01054d478c6d3efc0188cb2ed4850e9f475664'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rmagatti/auto-session'

rockspec_format = '3.0'
package = 'auto-session'
version = modrev ..'-'.. specrev

description = {
  summary = 'A small automated session manager for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rmagatti/auto-session',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'auto-session-' .. 'aa01054d478c6d3efc0188cb2ed4850e9f475664',
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
