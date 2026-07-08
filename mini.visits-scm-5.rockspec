local git_ref = '1b840f3e8f17d92ccba493f9e7ba62fe800dea4c'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nvim-mini/mini.visits'

rockspec_format = '3.0'
package = 'mini.visits'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Track and reuse file system visits. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.visits',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.visits-' .. '1b840f3e8f17d92ccba493f9e7ba62fe800dea4c',
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
