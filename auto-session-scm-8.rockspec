local git_ref = '02a5588f677970a9bc784115c62bef9e5855499b'
local modrev = 'scm'
local specrev = '8'

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
  dir = 'auto-session-' .. '02a5588f677970a9bc784115c62bef9e5855499b',
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
