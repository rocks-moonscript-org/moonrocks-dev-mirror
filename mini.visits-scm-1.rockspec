local git_ref = 'd4d7d88169ff401a6e0a35d83f19f0de66ab7dab'
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
  dir = 'mini.visits-' .. 'd4d7d88169ff401a6e0a35d83f19f0de66ab7dab',
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
