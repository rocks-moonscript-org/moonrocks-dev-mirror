local git_ref = '6cd7e4d44bf9b1d8bd60e19db7f87204e533ec2c'
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
  dir = 'auto-session-' .. '6cd7e4d44bf9b1d8bd60e19db7f87204e533ec2c',
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
