local git_ref = '20e82e3f4ed1ce96d254c16a8602d7606c618c25'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.visits'

rockspec_format = '3.0'
package = 'mini.visits'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Track and reuse file system visits. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.visits',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.visits-' .. '20e82e3f4ed1ce96d254c16a8602d7606c618c25',
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
